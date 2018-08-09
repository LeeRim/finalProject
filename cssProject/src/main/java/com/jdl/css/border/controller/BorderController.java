package com.jdl.css.border.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.border.model.service.BorderService;
import com.jdl.css.border.model.vo.BoardCommentVo;
import com.jdl.css.border.model.vo.BorderVo;
import com.jdl.css.border.model.vo.PageInfo;

@Controller
public class BorderController {

	@Autowired
	BorderService borderservice;
	
	@RequestMapping("borderList.do")
	public ModelAndView boaderList(HttpServletRequest request, BorderVo board, ModelAndView mv){
		
		System.out.println("borderList.do : " + board);
		System.out.println(board.getbCateGory());
//		int currentPage;	//현재 페이지의 번호
		int limitPage;		//한페이지에 출력할 페이지 갯수
		//1~10
		int maxPage;		//가장 마지막 페이지
		int startPage;		//시작 페이지 변수
		int endPage;		//마지막 페이지 변수
		int limit;				//한페이지에 출력할 글에 갯수
		int currentPage;
		
		limit = 10;
		limitPage = 10;
		
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}else{
			currentPage = 1;
		}
		
		//게시글의 총 갯수
		int listCount = borderservice.countBoardList(board.getbCateGory());
		System.out.println("controller listCount : " + listCount);
		
		//134 -> 14
				maxPage = (int)((double)listCount / limit + 0.9);
				
				//현재 페이지 번호
				//12 - 10
				startPage = (int)(currentPage / limitPage * limitPage) + 1;
				//11~20  -> 134 -> 14
				endPage = startPage + limitPage - 1;
				System.out.println("startPage : " + startPage);
				System.out.println("endPage : " + endPage);
				if(maxPage < endPage){
					endPage = maxPage;
				}
		PageInfo pi = new PageInfo(currentPage, limitPage, maxPage,
						startPage, endPage, listCount);
//==================페이징 처리의 끝===============
		int startRow = (currentPage - 1) * limit + 1; 
		int endRow = startRow + limit - 1;
		
		pi.setStartRow(startRow);
		pi.setEndRow(endRow);
		
		board.setStartRow(startRow);
		board.setEndRow(endRow);
		List<BorderVo> list = borderservice.getNoticeList(board);
		if(list != null){
			mv.addObject("list", list);
			mv.addObject("bCateGory", board.getbCateGory());
			mv.addObject("pi", pi);
			mv.setViewName("border/borderList");
		}
		System.out.println("controller pi : " + pi);
		System.out.println("controller list : " +list);
		System.out.println("controller board : " +board);
		return mv;
	}

	@RequestMapping("borderForm.do")
	public ModelAndView borderForm(BorderVo board, ModelAndView mv){
		
		mv.addObject("board", board);
		mv.setViewName("border/borderForm");
		return mv;
	}
	
	@RequestMapping("writeBoard.do")
	public ModelAndView writeBoard(BorderVo board, ModelAndView mv, HttpServletResponse response){
			int result = borderservice.writeBoard(board);
			
			if(result > 0){
				mv.setViewName("redirect:borderList.do?bCateGory="+ board.getbCateGory());
			}
		return mv;
	}

	@RequestMapping("selectBoard.do")
	public ModelAndView selectBoard(BorderVo b, ModelAndView mv){
		
		System.out.println("selectBoard.do : " + b);
		BorderVo board = borderservice.selectBoard(b.getBoardKey());
		
		List<BoardCommentVo> bList = borderservice.selectCommentList(b.getBoardKey());
		if(board != null){
			board.setbCount(board.getbCount() + 1);
			mv.addObject("bList", bList);
			mv.addObject("board", board);
			mv.setViewName("border/borderDetail");
		}
		System.out.println("bList : " +  bList);
		int result = borderservice.updateBoardCount(b.getBoardKey());
		return mv;
	}
	
	@RequestMapping("updateBorder.do")
	public ModelAndView updateBorder(BorderVo border, ModelAndView mv, HttpServletResponse response){
		
		System.out.println(border);
		int result = borderservice.updateBoard(border);
		if(result > 0){
			mv.setViewName("redirect:borderList.do?bCateGory="+ border.getbCateGory());
		}
		return mv;
	}
	
	@RequestMapping("borderUpdateForm.do")
	public ModelAndView borderUpdateForm(BorderVo b, ModelAndView mv){
		
		BorderVo board = borderservice.selectBoard(b.getBoardKey());
		if(board != null){
			mv.addObject("board", board);
			mv.setViewName("border/borderUpdateForm");
		}
		return mv;
	}
	
	@RequestMapping("borderIndex.do")
	public String borderIndex(){
		return "border/borderIndex";
	}
	
	@RequestMapping("writeComment.do")
	public ModelAndView writeComment(int boardKey, String cWriter, String cContent, ModelAndView mv){
		
		BoardCommentVo bc = new BoardCommentVo();
		bc.setBoardKeyFk(boardKey);
		bc.setcWriter(cWriter);
		bc.setcContent(cContent);
		System.out.println(bc);
		int result = borderservice.InsertborderComment(bc);
		System.out.println(result);
		mv.setViewName("redirect:selectBoard.do?boardKey=" + bc.getBoardKeyFk() + "&currentPage=1");
		return mv;
	}
	
	@RequestMapping("borderDelete.do")
	public ModelAndView borderDelete(BorderVo board, ModelAndView mv){
		
		int result = borderservice.deleteBoard(board);
		System.out.println("지워짐");
		return mv;
	}
	  @RequestMapping("Boardcategory.do")
	  public @ResponseBody List<BorderVo> selectBoardList() {
	      List<BorderVo> list = new ArrayList<BorderVo>();
	      list = borderservice.selectBoardList();
	      System.out.println("category : " + list);
	      return list;
	   }
	
	
}
