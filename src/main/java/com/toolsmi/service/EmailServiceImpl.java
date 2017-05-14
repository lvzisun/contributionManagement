package com.toolsmi.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.toolsmi.dao.EmailDao;
import com.toolsmi.entity.Condition;
import com.toolsmi.entity.Email;
import com.toolsmi.util.Format;
import com.toolsmi.util.SameUserUtil;

@Service("emailService")
public class EmailServiceImpl implements EmailService {

	@Override
	public Map<String, Object> queryEmailBySendid(Condition condition) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> queryEmailByReceiveid(Condition condition) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> queryEmailBySendidWithCondition(Condition condition) {
		// TODO Auto-generated method stub
		return null;
	}

}
