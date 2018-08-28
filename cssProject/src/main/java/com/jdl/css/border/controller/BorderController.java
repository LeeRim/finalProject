package com.jdl.css.border.controller;

import java.io.File;

import java.io.IOException;
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
import com.jdl.css.common.model.service.AttachmentService;
import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Controller
public class BorderController {

	@Autowired
	BorderService borderservice;
	
	@Autowired
	AttachmentService attachservice;
	
	@RequestMapping("borderList.do")
	public ModelAndView boaderList(@RequestParam(value="currentPage", required=false)String currentPagestr, HttpServletRequest request, BorderVo board, ModelAndView mv){
		
		int currentPage;	//현재 페이지의 번호
		int limitPage;		//한페이지에 출력할 페이지 갯수
		//1~10
		int maxPage;		//가장 마지막 페이지
		int startPage;		//시작 페이지 변수
		int endPage;		//마지막 페이지 변수
		int limit;				//한페이지에 출력할 글에 갯수
		
		limit = 10;
		limitPage = 10;
		
		if(currentPagestr != null){
			currentPage = Integer.parseInt(currentPagestr);
		}else{
			currentPage = 1;
		}
		//게시글의 총 갯수
		int listCount = borderservice.countBoardList(board.getbCateGory());
		
		//134 -> 14
				maxPage = (int)((double)listCount / limit + 0.9);
				
				//현재 페이지 번호
				//12 - 10
				startPage = (int)(currentPage / limitPage * limitPage) + 1;
				//11~20  -> 134 -> 14
				endPage = startPage + limitPage - 1;
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
		
		
		board.setCurrentPage(currentPage);
		board.setLimit(limit);
		
		List<BorderVo> list = borderservice.getNoticeList(board);
		System.out.println(board.getbCateGory());
		if(list != null){
			mv.addObject("list", list);
			mv.addObject("boardKey", board.getBoardKey());
			mv.addObject("bCateGory", board.getbCateGory());
			mv.addObject("pi", pi);
			mv.setViewName("border/borderList");
		}
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
		System.out.println("작성자 : " + board);	
		int result = borderservice.writeBoard(board);
			if(result > 0){
				mv.setViewName("redirect:borderList.do?bCateGory="+ board.getbCateGory());
			}
		return mv;
	}

	@RequestMapping("selectBoard.do")
	public ModelAndView selectBoard(BorderVo b, ModelAndView mv, int currentPage){
		
		
		BorderVo board = borderservice.selectBoard(b.getBoardKey());
		int result = borderservice.updateBoardCount(b.getBoardKey());
		
		List<BoardCommentVo> bList = borderservice.selectCommentList(b.getBoardKey());
		if(board != null){
			
			mv.addObject("bList", bList);
			mv.addObject("board", board);
			board.setbCount(board.getbCount() + 1);
			mv.addObject("currentPage", currentPage);
			mv.setViewName("border/borderDetail");
		}
		return mv;
	}
	
	@RequestMapping("updateBorder.do")
	public ModelAndView updateBorder(BorderVo border, ModelAndView mv, HttpServletResponse response){
		
		int result = borderservice.updateBoard(border);
		System.out.println("업데이트할 내용 : " + border);
		if(result > 0){
			mv.setViewName("redirect:selectBoard.do?boardKey="+ border.getBoardKey() + "&currentPage=1");
		}
		return mv;
	}
	
	@RequestMapping("borderUpdateForm.do")
	public ModelAndView borderUpdateForm(@RequestParam(value="currentPage", required=false)String currentPagestr, BorderVo b, ModelAndView mv){
		
		BorderVo board = borderservice.selectBoard(b.getBoardKey());
		if(board != null){
			mv.addObject("currentPage", currentPagestr);
			mv.addObject("board", board);
			mv.setViewName("border/borderUpdateForm");
		}
		return mv;
	}
	
	@RequestMapping("borderIndex.do")
	public ModelAndView borderIndex(ModelAndView mv){
		
		List<BorderVo> board1 = borderservice.selectBoardOne(); //공지사항
		List<BorderVo> board2 = borderservice.selectBoardTwo(); //자유
		List<BorderVo> board3 = borderservice.selectBoardThr(); //경조사
		List<BorderVo> board4 = borderservice.selectBoardFor(); //앨범
		List<AttachmentVo> attach = attachservice.selectAttachSev();
		
		mv.addObject("bo1", 1);
		mv.addObject("bo2", 2);
		mv.addObject("bo3", 3);
		mv.addObject("bo4", 4);
		
		mv.addObject("attach", attach);
		mv.addObject("board1", board1);
		mv.addObject("board2", board2);
		mv.addObject("board3", board3);
		mv.addObject("board4", board4);
		
		mv.setViewName("border/borderIndex");
		return mv;
	}
	
	@RequestMapping("writeComment.do")
	public ModelAndView writeComment(int boardKey, String cWriter, String cContent, ModelAndView mv){
		
		BoardCommentVo bc = new BoardCommentVo();
		bc.setBoardKeyFk(boardKey);
		bc.setcWriter(cWriter);
		bc.setcContent(cContent);
		int result = borderservice.InsertborderComment(bc);
		mv.setViewName("redirect:selectBoard.do?boardKey=" + bc.getBoardKeyFk() + "&currentPage=1");
		return mv;
	}
	
	@RequestMapping("deleteBoard.do")
	public ModelAndView deleteBorder(BorderVo board, ModelAndView mv){
		
		int result = borderservice.deleteBoard(board);
		if(0 < result){
			mv.addObject("board", board);
			mv.setViewName("redirect:borderList.do?bCateGory="+ board.getbCateGory());
		}
		return mv;
	}
	
	@RequestMapping("updateComment.do")
	public ModelAndView updateComment(String boardKey, BoardCommentVo bc, ModelAndView mv){
		
		int result = borderservice.updateComment(bc);
		if(0 < result){
			mv.setViewName("redirect:selectBoard.do?boardKey="+ boardKey + "&currentPage=1");
		}
		return mv;
	}
	
	@RequestMapping("deleteComment.do")
	public ModelAndView deleteComment(String boardKey, BoardCommentVo bc, ModelAndView mv){
		
		int result = borderservice.deleteComment(bc);
		if(0 < result){
			mv.setViewName("redirect:selectBoard.do?boardKey="+ boardKey + "&currentPage=1");
		}
		return mv;
	}
	
	@RequestMapping("borderGalleryList.do")
	public ModelAndView borderGallery(ModelAndView mv){
		List<AttachmentVo> list = attachservice.selectAttach();
		
		mv.addObject("list", list);
		mv.setViewName("border/borderGalleryList");
		return mv;
	}
	
	@RequestMapping("boardGalleryForm.do")
	public String borderGalleryForm(){
		return "border/borderGalleryForm";
	}
	
	@RequestMapping("boardGalleryWrite.do")
	public ModelAndView boardGalleryForm(BorderVo board, HttpServletRequest request, @RequestParam("file") MultipartFile file, ModelAndView mv) {
		
		int resultBoard = borderservice.insertBoard(board);
		
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String path = root + "\\upload\\boardGallery"; //spring에서는 경로가 '/'아니라 '\\'로 경로를 나타냄
		String filePath = "";
		
		
		File folder = new File(path);
		if(!folder.exists()){
			folder.mkdirs();
		}
			AttachmentVo attach = new AttachmentVo();
			filePath = folder + "\\" + file.getOriginalFilename();
			try {
				file.transferTo(new File(filePath));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			List<AttachmentVo> attachList = new ArrayList<AttachmentVo>();
			attach.setAttaFileName(file.getOriginalFilename());
			attach.setAttaFilePath("boardGallery");
			attach.setAttaLocation(board.getBoardKey());
			attachList.add(attach);
		
		board.setAttach(attachList);
		
		int resultAttach = attachservice.insertAttachments(attachList);
		
		mv.setViewName("redirect:borderGalleryList.do");
		return mv;
	}
	
	@RequestMapping("attachDetailPage.do")
	public ModelAndView attachDetailPage(AttachmentVo av, ModelAndView mv){
		
		AttachmentVo attach = attachservice.selectAttachDetail(av);
		List<BoardCommentVo> bList = borderservice.selectCommentList(attach.getBoardKey());
		BorderVo board = borderservice.selectBoard(attach.getBoardKey());
		
		System.out.println("갤러리 디테일 : " + attach);
		System.out.println("갤러리 디테일2 : " + bList);
		System.out.println("갤러리 보드 : " + board);
		mv.addObject("board", board);
		mv.addObject("attach", attach);
		mv.addObject("bList", bList);
		mv.setViewName("border/borderGalleryDetail");
		return mv;
	}
	
	@RequestMapping("deleteBoardGallery.do")
	public ModelAndView attachDeleteGallery(AttachmentVo av, ModelAndView mv){
		
		int result = attachservice.deleteGallery(av);
		mv.setViewName("redirect:borderGalleryList.do");
		return mv;
	}
	
	@RequestMapping("bGalleryModifyPage.do")
	public ModelAndView galleryUpdate(AttachmentVo av, ModelAndView mv){
		
		AttachmentVo attach = attachservice.selectAttachone(av.getAttaKey());
		
		mv.addObject("attaKey", av.getAttaKey());
		mv.addObject("attach", attach);
		mv.setViewName("border/borderGalleryModifyPage");
		return mv;
	}
	
	@RequestMapping("galleryModifyPage.do")
	public ModelAndView bGalleryModifyPage(HttpServletRequest request, @RequestParam("file") MultipartFile file, AttachmentVo av, ModelAndView mv, BorderVo board){
		
		int boardresult = borderservice.updateBoard(board);
		//기존 파일 삭제
				String root = request.getSession().getServletContext().getRealPath("resources");
				String path = root + "\\upload\\boardGallery";
				String filePath = "";
				
				File folder = new File(path);
				filePath = folder + "\\" + board.getAttach();
				
				File oldFile = new File(filePath);
				if(oldFile.exists()){
					oldFile.delete();
				}

				//새로운 파일 저장
				String newFilePath = folder + "\\" + file.getOriginalFilename();
				try {
					file.transferTo(new File(newFilePath));
				} catch (Exception e) {
					e.printStackTrace();
				}
				AttachmentVo attach = new AttachmentVo();
				
				attach.setAttaFileName(file.getOriginalFilename());
				attach.setAttaKey(av.getAttaKey());
				
		int attresult = attachservice.updateGallery(attach);
		mv.setViewName("redirect:borderGalleryList.do");
		return mv;
	}
	
	@RequestMapping("searchBoard.do")
	public ModelAndView searchBoard(@RequestParam(value="currentPage", required=false)String currentPagestr, BorderVo board, String condition, String keyword, ModelAndView mv){
		
		System.out.println("검색 햇을때 카테고리 값 확인 : " + board.getbCateGory());
		int currentPage;	//현재 페이지의 번호
		int limitPage;		//한페이지에 출력할 페이지 갯수
		//1~10
		int maxPage;		//가장 마지막 페이지
		int startPage;		//시작 페이지 변수
		int endPage;		//마지막 페이지 변수
		int limit;				//한페이지에 출력할 글에 갯수
		
		limit = 10;
		limitPage = 10;
		
		if(currentPagestr != null){
			currentPage = Integer.parseInt(currentPagestr);
		}else{
			currentPage = 1;
		}
		//게시글의 총 갯수
		int listCount = borderservice.countBoardsearch(condition, keyword, board.getbCateGory());
//		int listCount = borderservice.countBoardList(board.getbCateGory());
		
		//134 -> 14
				maxPage = (int)((double)listCount / limit + 0.9);
				
				//현재 페이지 번호
				//12 - 10
				startPage = (int)(currentPage / limitPage * limitPage) + 1;
				//11~20  -> 134 -> 14
				endPage = startPage + limitPage - 1;
				if(maxPage < endPage){
					endPage = maxPage;
				}
		PageInfo pi = new PageInfo(currentPage, limitPage, maxPage,
						startPage, endPage, listCount);
		//==================페이징 처리의 끝===============
		
		List<BorderVo> list = borderservice.listsearch(condition, keyword, board.getbCateGory());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("searchresult", listCount);
		map.put("condition", condition);
		map.put("keyword", keyword);
		map.put("bCateGory", board.getbCateGory());
		
		mv.addObject("map", map);
		mv.addObject("pi", pi);
		mv.setViewName("border/borderListsearch");
		System.out.println("search : " + condition);
		return mv;
	}
	
	@RequestMapping("read.do")
	public ModelAndView employeeRead(String text, @RequestParam(value="currentPage", required=false)String currentPagestr, String eName, ModelAndView mv, BorderVo board) {
		
		System.out.println("서버전송 확인 : " + text);
		int currentPage;	//현재 페이지의 번호
		int limitPage;		//한페이지에 출력할 페이지 갯수
		//1~10
		int maxPage;		//가장 마지막 페이지
		int startPage;		//시작 페이지 변수
		int endPage;		//마지막 페이지 변수
		int limit;				//한페이지에 출력할 글에 갯수
		
		limit = 10;
		limitPage = 10;
		
		if(currentPagestr != null){
			currentPage = Integer.parseInt(currentPagestr);
		}else{
			currentPage = 1;
		}
		//게시글의 총 갯수
		int listCount = borderservice.countEmpsearch(eName, board.getbCateGory());
//		int listCount = borderservice.countBoardList(board.getbCateGory());
		
		//134 -> 14
				maxPage = (int)((double)listCount / limit + 0.9);
				
				//현재 페이지 번호
				//12 - 10
				startPage = (int)(currentPage / limitPage * limitPage) + 1;
				//11~20  -> 134 -> 14
				endPage = startPage + limitPage - 1;
				if(maxPage < endPage){
					endPage = maxPage;
				}
		PageInfo pi = new PageInfo(currentPage, limitPage, maxPage,
						startPage, endPage, listCount);
		//==================페이징 처리의 끝===============
		
		List<EmployeeVo> list = borderservice.empsearch(eName, board.getbCateGory());
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("bCateGory", board.getbCateGory());
		map.put("eName", eName);
		
		mv.addObject("map", map);
		mv.addObject("pi", pi);
		mv.setViewName("border/borderEmp");
		return mv;
	}
	
}
