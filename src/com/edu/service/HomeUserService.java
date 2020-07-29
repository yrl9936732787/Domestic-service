package com.edu.service;

import java.util.List;

import com.edu.common.utils.Page;
import com.edu.po.Aunt;
import com.edu.po.Huser;
import com.edu.po.Need;
import com.edu.po.NewActive;
import com.edu.po.NewActiveReply;
import com.edu.po.Order;

public interface HomeUserService {

	public int addHuser(Huser huser);

	public Huser findUserByIdAndPassword(Huser huser);

	public int updateInforById(Huser huser);

	public int updatePasById(Huser huser);

	public int insertActive(NewActive newActive);

	public int insertAunt(Aunt aunt);

	public int insertNeed(Need need);

	public Page<Aunt> findAuntByState(Integer page, Integer rows, Aunt aunt);

	public Page<Aunt> findAuntByName(Integer page, Integer rows, Aunt aunt);

	public Page<Aunt> findAuntByType(Integer page, Integer rows, Aunt aunt);

	public Aunt findAuntDetailById(String id);

	public List<NewActive> toNewActive(NewActive newActive);

	public NewActive toFindNewActiveById(String id);

	public int insertActiveReply(NewActiveReply newActiveReply);

	public List<NewActiveReply> findnewActiveReplyById(String id);



	






}
