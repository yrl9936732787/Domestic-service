package com.edu.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.edu.po.Aunt;
import com.edu.po.Huser;
import com.edu.po.Need;
import com.edu.po.NewActive;
import com.edu.po.NewActiveReply;
import com.edu.po.Order;

public interface HomeUserDao {
	public int addHuser(Huser huser);
	public Huser findUserByIdAndPassword(Huser huser);
	public int updateInforById(Huser huser);
	public int updatePasById(Huser huser);
	public int insertActive(NewActive newActive);
	public int insertAunt(Aunt aunt);
	public int insertNeed(Need need);
	public List<Aunt> findAuntByState(RowBounds rowBounds, Aunt aunt);
	public Integer findAuntCountByState(Aunt aunt);
	public List<Aunt> findAuntByName(RowBounds rowBounds, Aunt aunt);
	public Integer findAuntCountByName(Aunt aunt);
	public List<Aunt> findAuntByType(RowBounds rowBounds, Aunt aunt);
	public Integer findAuntCountByType(Aunt aunt);
	public Aunt findAuntDetailById(String id);
	public List<NewActive> toNewActive(NewActive newActive);
	public NewActive toFindNewActiveById(String id);
	public int insertActiveReply(NewActiveReply newActiveReply);
	public List<NewActiveReply> findnewActiveReplyById(String id);
	

	
	
	

}
