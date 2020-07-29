package com.edu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.edu.po.Comment;
import com.edu.po.Order;

public interface OrderDao {
	
	public int updateOrderAunt_stateById(String id);
	public int insertOrder_Aid_Uid(Order order);
	public Order toFindOrder(Order order);
	public int updateOrderState(Order order);
	public List<Order> findOrderById(String uid);
	public Order toUpdate_creatOrder(String oid);
	public Integer Update_creatOrder(Order order);
	public Integer update_MyOrder_detail(Order order);
	public int updateAuntStateByOrderAuntid(String id);
	public int deleteOrder(@Param("oid") String oid);
	public int updateCommentState(String oid);
	public int insertComment(Comment comment);
	public List<Comment> findCommentByAid(String aid);
	public List<Order> findOrderByAuntid(String auntid);
	public Order findAllOrder(String oid);
	public List<Order> findAuntYuyueByAuntid(String auntid);
	

}
