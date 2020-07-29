package com.edu.service.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.common.utils.Page;
import com.edu.dao.OrderDao;
import com.edu.po.Comment;
import com.edu.po.Order;
import com.edu.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderDao orderDao;

	
	@Override
	public int updateOrderAunt_stateById(String id) {
		// TODO Auto-generated method stub
		return orderDao.updateOrderAunt_stateById(id);
	}

	public int insertOrder_Aid_Uid(Order order) {
		// TODO Auto-generated method stub
		//System.out.println(id+id2+"11111111测试");
		return orderDao.insertOrder_Aid_Uid(order);
		
	}


	@Override
	public Order toFindOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDao.toFindOrder(order);
	}

	@Override
	public int updateOrderState(Order order) {
		// TODO Auto-generated method stub
		return orderDao.updateOrderState(order);
		
	}

	@Override
	public List<Order> findOrderById(String uid) {
		// TODO Auto-generated method stub
		return orderDao.findOrderById(uid);
	}

	@Override
	public Order toUpdate_creatOrder(String oid) {
		// TODO Auto-generated method stub
		return orderDao.toUpdate_creatOrder(oid);
	}

	@Override
	public Integer Update_creatOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDao.Update_creatOrder(order);
	}

	@Override
	public Integer update_MyOrder_detail(Order order) {
		// TODO Auto-generated method stub
		return orderDao.update_MyOrder_detail(order);
	}
	
	@Override
	public int updateAuntStateByOrderAuntid(String id) {
		// TODO Auto-generated method stub
		return orderDao.updateAuntStateByOrderAuntid(id);
	}

	@Override
	public int deleteOrder(String oid) {
		// TODO Auto-generated method stub
		return orderDao.deleteOrder(oid);
	}

	@Override
	public int updateCommentState(String oid) {
		// TODO Auto-generated method stub
		return orderDao.updateCommentState(oid);
	}

	@Override
	public int insertComment(Comment comment) {
		// TODO Auto-generated method stub
		return orderDao.insertComment(comment);
	}

	@Override
	public List<Comment> findCommentByAid(String aid) {
		// TODO Auto-generated method stub
		return orderDao.findCommentByAid(aid);
	}

	@Override
	public List<Order> findOrderByAuntid(String auntid) {
		// TODO Auto-generated method stub
		return orderDao.findOrderByAuntid(auntid);
	}

	@Override
	public Order findAllOrder(String oid) {
		// TODO Auto-generated method stub
		return orderDao.findAllOrder(oid);
	}

	@Override
	public List<Order> findAuntYuyueByAuntid(String auntid) {
		// TODO Auto-generated method stub
		return orderDao.findAuntYuyueByAuntid(auntid);
	}

	


}
