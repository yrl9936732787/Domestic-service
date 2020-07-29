package com.edu.service.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.common.utils.Page;
import com.edu.dao.HomeUserDao;
import com.edu.po.Aunt;
import com.edu.po.Huser;
import com.edu.po.Need;
import com.edu.po.NewActive;
import com.edu.po.NewActiveReply;
import com.edu.po.Order;
import com.edu.service.HomeUserService;

@Service
public class HomeUserServiceImpl implements HomeUserService {
	@Autowired
	private HomeUserDao homeUserDao;
	
	@Override
	public int addHuser(Huser huser) {
		// TODO Auto-generated method stub
		return homeUserDao.addHuser(huser);
	}
	
	@Override
	public Huser findUserByIdAndPassword(Huser huser){
		return homeUserDao.findUserByIdAndPassword(huser);
	}

	@Override
	public int updateInforById(Huser huser) {
		// TODO Auto-generated method stub
		return homeUserDao.updateInforById(huser);
	}

	@Override
	public int updatePasById(Huser huser) {
		// TODO Auto-generated method stub
		return homeUserDao.updatePasById(huser);
	}

	@Override
	public int insertActive(NewActive newActive) {
		// TODO Auto-generated method stub
		return homeUserDao.insertActive(newActive);
	}

	@Override
	public int insertAunt(Aunt aunt) {
		// TODO Auto-generated method stub
		return homeUserDao.insertAunt(aunt);
	}

	@Override
	public int insertNeed(Need need) {
		// TODO Auto-generated method stub
		return homeUserDao.insertNeed(need);
	}

	@Override
	public Page<Aunt> findAuntByState(Integer page, Integer rows, Aunt aunt) {
		// TODO Auto-generated method stub
		RowBounds rowBounds = new RowBounds((page-1) * rows, rows);
//		// 查询阿姨列表
		List<Aunt> aunts=homeUserDao.findAuntByState(rowBounds,aunt);
//		
//
//		// 查询阿姨列表总记录数
		Integer count = homeUserDao.findAuntCountByState(aunt);
//		// 创建Page返回对象
		Page<Aunt> result = new Page<Aunt>();
		result.setPage(page);
		result.setRows(aunts);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	
	
	@Override
	public Page<Aunt> findAuntByName(Integer page, Integer rows, Aunt aunt) {
		// TODO Auto-generated method stub
		RowBounds rowBounds = new RowBounds((page-1) * rows, rows);
//		// 查询阿姨列表
		List<Aunt> aunts=homeUserDao.findAuntByName(rowBounds,aunt);
//		
//
//		// 查询阿姨列表总记录数
		Integer count = homeUserDao.findAuntCountByName(aunt);
//		// 创建Page返回对象
		Page<Aunt> result = new Page<Aunt>();
		result.setPage(page);
		result.setRows(aunts);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	
	
	@Override
	public Page<Aunt> findAuntByType(Integer page, Integer rows, Aunt aunt) {
		// TODO Auto-generated method stub
		RowBounds rowBounds = new RowBounds((page-1) * rows, rows);
//		// 查询阿姨列表
		List<Aunt> aunts=homeUserDao.findAuntByType(rowBounds,aunt);
//		
//
//		// 查询阿姨列表总记录数
		Integer count = homeUserDao.findAuntCountByType(aunt);
//		// 创建Page返回对象
		Page<Aunt> result = new Page<Aunt>();
		result.setPage(page);
		result.setRows(aunts);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}


	@Override
	public Aunt findAuntDetailById(String id) {
		// TODO Auto-generated method stub
		return homeUserDao.findAuntDetailById(id);
	}

	@Override
	public List<NewActive> toNewActive(NewActive newActive) {
		// TODO Auto-generated method stub
		return homeUserDao.toNewActive(newActive);
	}

	@Override
	public NewActive toFindNewActiveById(String id) {
		// TODO Auto-generated method stub
		return homeUserDao.toFindNewActiveById(id);
	}

	@Override
	public int insertActiveReply(NewActiveReply newActiveReply) {
		// TODO Auto-generated method stub
		return homeUserDao.insertActiveReply(newActiveReply);
	}

	@Override
	public List<NewActiveReply> findnewActiveReplyById(String id) {
		// TODO Auto-generated method stub
		return homeUserDao.findnewActiveReplyById(id);
	}



	



}
