package com.jdl.css.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.common.model.vo.PaymentVo;
import com.jdl.css.company.model.vo.CompanyVo;
import com.jdl.css.employee.model.vo.EmployeeVo;




@Repository
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<CompanyVo> selectCompanyList() {
		return sqlSession.selectList("AdminMapper.selectCompanyList");
	}

	public List<CompanyVo> selectCompanySetList() {
		return sqlSession.selectList("AdminMapper.selectCompanySetList");
	}

	public int updateCompanyLevel(CompanyVo company) {
		return sqlSession.update("AdminMapper.updateCompanyLevel",company);
	}

	public List<CompanyVo> selectMarkList() {
		return sqlSession.selectList("AdminMapper.selectMarkList");
	}

	public int selectAllCompanyCount() {
		return sqlSession.selectOne("AdminMapper.selectAllCompanyCount");
	}
	
	public int selectCountLevel1() {
		return sqlSession.selectOne("AdminMapper.selectCountLevel1");
	}
	
	public int selectCountLevel2() {
		return sqlSession.selectOne("AdminMapper.selectCountLevel2");
	}
	
	public int selectCountLevel3() {
		return sqlSession.selectOne("AdminMapper.selectCountLevel3");
	}

	public List<CompanyVo> selectTop5CompanyList() {
		return sqlSession.selectList("AdminMapper.selectTop5List");
	}

	public List<CompanyVo> selectCalList(String dateList) {
		return sqlSession.selectList("AdminMapper.selectCalList",dateList);
	}
	
	public List<CompanyVo> selectNowCalList() {
		return sqlSession.selectList("AdminMapper.selectNowCalList");
	}

	public EmployeeVo companyIdCheck(String id) {
		return sqlSession.selectOne("AdminMapper.selectCompanyIdCheck",id);
	}

	public int insertCompany(CompanyVo company) {
		return sqlSession.insert("AdminMapper.insertCompany",company);
	}

	public int insertEmployeeAdmin(EmployeeVo employee) {
		return sqlSession.insert("AdminMapper.insertEmployeeAdmin",employee);
	}

	public List<EmployeeVo> selectEmployeeCount() {
		return sqlSession.selectList("AdminMapper.selectEmployeeCount");
	}

	public CompanyVo selectComapnyPayment(int cKeyFk) {
		return sqlSession.selectOne("AdminMapper.selectCompanyPayment",cKeyFk);
	}


	public int insertCompanyPaymentP(PaymentVo paymentVo) {
		return sqlSession.insert("AdminMapper.insertCompanyPaymentP",paymentVo);
	}

	public int insertCompanyPaymentC(CompanyVo company) {
		return sqlSession.update("AdminMapper.insertCompanyPaymentC",company);
	}

	public List<PaymentVo> selectMonthSumSales() {
		return sqlSession.selectList("AdminMapper.selectMonthSumSales");
	}

	public List<PaymentVo> selectLevelCountPer() {
		return sqlSession.selectList("AdminMapper.selectLevelCountPer");
	}

	public List<PaymentVo> selectMonthSumLevel() {
		return sqlSession.selectList("AdminMapper.selectMonthSumLevel");
	}
	
	public PaymentVo selectAllCount(){
		return sqlSession.selectOne("AdminMapper.selectAllCount");
	}

	public List<CompanyVo> selectCompanyPaymentList() {
		return sqlSession.selectList("AdminMapper.selectCompanyPaymentList");
	}

	
	

	

}
