package com.edu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.edu.po.Aunt;
import com.edu.po.Comment;
import com.edu.po.Hadmin;
import com.edu.po.Huser;
import com.edu.po.Need;
import com.edu.po.Order;

public interface HomeAdminDao {

	public Hadmin findAdminByIdAndPassword(Hadmin hadmin);

	public Aunt findAuntByName(Aunt aunt);

	public List<Aunt> findAuntByCond2(RowBounds rowBounds, Aunt aunt);

	public int findAuntCountByCond2(Aunt aunt);

	public int Aunt_add(Aunt aunt);

	public Aunt updateAuntById(String id);

	public Integer updateAuntModify(Aunt aunt);

	public int insertAdmin(Hadmin hadmin);

	public Hadmin updateAdminById(String id);

	public Integer updateAdminModify(Hadmin hadmin);

	public List<Hadmin> findAdminByCond2(RowBounds rowBounds, Hadmin hadmin);

	public Integer findAdminCountByCond2(Hadmin hadmin);

	public List<Huser> findUserByCond2(RowBounds rowBounds, Huser huser);

	public Integer findUserCountByCond2(Huser huser);

	public int User_add(Huser huser);

	public List<Order> findOrderBy_Uid_Auntid(RowBounds rowBounds, Order order);

	public Integer findOrderCountBy_Uid_Auntid(Order order);

	public List<Need> toNeed(Need need);

	public int updateNeed2(String id);

	public int updateNeed3(String id);

	public Need findupdateNeed4ById(String id);

	public int updateNeed4(Need need);

	public List<Comment> toComment(RowBounds rowBounds, Comment comment);

	public Integer findCommentCount(Comment comment);

	public int deleteComment(@Param("id") String id);


	

}
