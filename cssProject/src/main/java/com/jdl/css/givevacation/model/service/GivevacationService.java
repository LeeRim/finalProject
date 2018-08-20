package com.jdl.css.givevacation.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.givevacation.model.dao.GivevacationDao;


@Service
public class GivevacationService {

	@Autowired
	GivevacationDao dao;
	
	
}
