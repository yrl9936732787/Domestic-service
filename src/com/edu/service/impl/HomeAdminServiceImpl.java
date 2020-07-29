package com.edu.service.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.common.utils.Page;
import com.edu.dao.HomeAdminDao;
import com.edu.po.Aunt;
import com.edu.po.Comment;
import com.edu.po.Hadmin;
import com.edu.po.Huser;
import com.edu.po.Need;
import com.edu.po.Order;
import com.edu.service.HomeAdminService;


@Service
public class HomeAdminServiceImpl implements HomeAdminService{
	@Autowired
	private HomeAdminDao homeAdminDao;
	
	@Override
	public Hadmin findAdminByIdAndPassword(Hadmin hadmin){
		return homeAdminDao.findAdminByIdAndPassword(hadmin);
	}


	/**
	 * 查询阿姨信息
	 */
	@Override
	public Page<Aunt> findAuntByCond2(Integer page, Integer rows, Aunt aunt) {
		// TODO Auto-generated method stub
		RowBounds rowBounds = new RowBounds((page-1) * rows, rows);
//		// 查询阿姨列表
		List<Aunt> aunts=homeAdminDao.findAuntByCond2(rowBounds,aunt);
//		
//
//		// 查询阿姨列表总记录数
		Integer count = homeAdminDao.findAuntCountByCond2(aunt);
//		// 创建Page返回对象
		Page<Aunt> result = new Page<Aunt>();
		result.setPage(page);
		result.setRows(aunts);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}


	@Override
	public int Aunt_add(Aunt aunt) {
		// TODO Auto-generated method stub
		return homeAdminDao.Aunt_add(aunt);
	}


	@Override
	public Aunt updateAuntById(String id) {
		return homeAdminDao.updateAuntById(id);
	}


	@Override
	public Integer updateAuntModify(Aunt aunt) {
		// TODO Auto-generated method stub
		return homeAdminDao.updateAuntModify(aunt);
	}


	@Override
	public int insertAdmin(Hadmin hadmin) {
		// TODO Auto-generated method stub
		return homeAdminDao.insertAdmin(hadmin);
	}


	@Override
	public Hadmin updateAdminById(String id) {
		// TODO Auto-generated method stub
		return homeAdminDao.updateAdminById(id);
	}


	@Override
	public Integer updateAdminModify(Hadmin hadmin) {
		// TODO Auto-generated method stub
		return homeAdminDao.updateAdminModify(hadmin);
	}


	@Override
	public Page<Hadmin> findAdminByCond2(Integer page, Integer rows, Hadmin hadmin) {
		// TODO Auto-generated method stub
		RowBounds rowBounds = new RowBounds((page-1) * rows, rows);
//		// 查询管理员列表
		List<Hadmin> hadmins=homeAdminDao.findAdminByCond2(rowBounds,hadmin);
//		
//
//		// 查询管理员列表总记录数
		Integer count = homeAdminDao.findAdminCountByCond2(hadmin);
//		// 创建Page返回对象
		Page<Hadmin> result = new Page<Hadmin>();
		result.setPage(page);
		result.setRows(hadmins);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}


	@Override
	public Page<Huser> findUserByCond2(Integer page, Integer rows, Huser huser) {
		// TODO Auto-generated method stub
		RowBounds rowBounds = new RowBounds((page-1) * rows, rows);
//		// 查询客户列表
		List<Huser> husers=homeAdminDao.findUserByCond2(rowBounds,huser);
//		
//
//		// 查询客户列表总记录数
		Integer count = homeAdminDao.findUserCountByCond2(huser);
//		// 创建Page返回对象
		Page<Huser> result = new Page<Huser>();
		result.setPage(page);
		result.setRows(husers);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}


	@Override
	public int User_add(Huser huser) {
		// TODO Auto-generated method stub
		return homeAdminDao.User_add(huser);
	}


	@Override
	public Page<Order> findOrderBy_Uid_Auntid(Integer page, Integer rows,
			Order order) {
		RowBounds rowBounds = new RowBounds((page-1) * rows, rows);
//		// 查询订单列表
		List<Order> orders=homeAdminDao.findOrderBy_Uid_Auntid(rowBounds,order);
//		
//
//		// 查询订单列表总记录数
		Integer count = homeAdminDao.findOrderCountBy_Uid_Auntid(order);
//		// 创建Page返回对象
		Page<Order> result = new Page<Order>();
		result.setPage(page);
		result.setRows(orders);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}


	@Override
	public List<Need> toNeed(Need need) {
		// TODO Auto-generated method stub
		return homeAdminDao.toNeed(need);
	}


	@Override
	public int updateNeed2(String id) {
		// TODO Auto-generated method stub
		return homeAdminDao.updateNeed2(id);
	}


	@Override
	public int updateNeed3(String id) {
		// TODO Auto-generated method stub
		return homeAdminDao.updateNeed3(id);
	}


	@Override
	public Need findupdateNeed4ById(String id) {
		// TODO Auto-generated method stub
		return homeAdminDao.findupdateNeed4ById(id);
	}


	@Override
	public int updateNeed4(Need need) {
		// TODO Auto-generated method stub
		return homeAdminDao.updateNeed4(need);
	}


	@Override
	public Page<Comment> toComment(Integer page, Integer rows, Comment comment) {
		RowBounds rowBounds = new RowBounds((page-1) * rows, rows);
//		// 查询评论列表
		List<Comment> comments=homeAdminDao.toComment(rowBounds,comment);
//		
//
//		// 查询评论列表总记录数
		Integer count = homeAdminDao.findCommentCount(comment);
//		// 创建Page返回对象
		Page<Comment> result = new Page<Comment>();
		result.setPage(page);
		result.setRows(comments);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}


	@Override
	public int deleteComment(String id) {
		// TODO Auto-generated method stub
		return homeAdminDao.deleteComment(id);
	}








}
