package com.edu.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.common.utils.Page;
import com.edu.po.Aunt;
import com.edu.po.Comment;
import com.edu.po.Hadmin;
import com.edu.po.Huser;
import com.edu.po.Need;
import com.edu.po.Order;

public interface HomeAdminService {

	public Hadmin findAdminByIdAndPassword(Hadmin hadmin);

	public Page<Aunt> findAuntByCond2(Integer page, Integer rows, Aunt aunt);

	public int Aunt_add(Aunt aunt);

	public Aunt updateAuntById(String id);

	public Integer updateAuntModify(Aunt aunt);

	public int insertAdmin(Hadmin hadmin);

	public Hadmin updateAdminById(String id);

	public Integer updateAdminModify(Hadmin hadmin);

	public Page<Hadmin> findAdminByCond2(Integer page, Integer rows, Hadmin hadmin);

	public Page<Huser> findUserByCond2(Integer page, Integer rows, Huser huser);

	public int User_add(Huser huser);

	public Page<Order> findOrderBy_Uid_Auntid(Integer page, Integer rows, Order order);

	public List<Need> toNeed(Need need);

	public int updateNeed2(String id);

	public int updateNeed3(String id);

	public Need findupdateNeed4ById(String id);

	public int updateNeed4(Need need);

	public Page<Comment> toComment(Integer page, Integer rows, Comment comment);

	public int deleteComment(@Param("id") String id);






	
	
	
	

}
