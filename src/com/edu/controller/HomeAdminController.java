package com.edu.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.common.utils.Page;
import com.edu.po.Aunt;
import com.edu.po.Comment;
import com.edu.po.Hadmin;
import com.edu.po.Huser;
import com.edu.po.Need;
import com.edu.po.NewActive;
import com.edu.po.Order;
import com.edu.service.HomeAdminService;

@Controller
public class HomeAdminController {
	@Autowired
	private HomeAdminService homeAdminService;

	
	@RequestMapping("/admin_login.action")
	public String admin_login(Model model,Hadmin hadmin,HttpSession session) {
		String forword="";
		Hadmin hadmin1=homeAdminService.findAdminByIdAndPassword(hadmin);
		if(hadmin1!=null){
			forword="admin/main";
			model.addAttribute("hadmin", hadmin1);
			session.setAttribute("hadmin", hadmin1);
		}
		else{
			forword="index2";		
		}
		return forword;
	}
	
	@RequestMapping("/admin_loginout.action")
	public String admin_loginout(Model model,HttpSession session) {
		String forword="index2";
		session.invalidate();
		return forword;
	}
	
	
	/**
	 * 阿姨信息界面操作
	 */
	@RequestMapping("/toAunt.action")
	public String toAunt(Model model,HttpSession session,Aunt aunt,@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="8")Integer rows) {
		
		String forword="admin/Aunt";
		Page<Aunt> aunts=homeAdminService.findAuntByCond2(page,rows,aunt);
		model.addAttribute("page", aunts);
		model.addAttribute("aunt_name", aunt.getAunt_name());
		session.setAttribute("page", aunts);
		session.setAttribute("aunt_name", aunt.getAunt_name());
		
		return forword;
	}
	
	/**
	 * 添加阿姨的信息
	 * @param model
	 * @param aunt
	 * @return
	 */
	@RequestMapping("/Aunt_add.action")
	public String Aunt_add(Model model,Aunt aunt,HttpSession session,HttpServletResponse resp)  throws IllegalStateException, IOException {
		//定义 文件名 
		  String filename=null;
		  //定义文件保存的本地路径 
		  String localPath="D:\\eclipse\\eclipse32\\workspace\\ks2\\WebContent\\auntImages\\"; 
		  // 保存数据库的路径名称，即数据库中的image列 
		  String sqlPath = null; 
		  /*
		   * 获取前台传过来的file值，如果不为空，则执行该if里面的代码
		   * 需要注意的是：这里我将MultipartFile即file属性定义在了商品的实体类中。
		   */
		  if(!aunt.getFile().isEmpty()){
		   //用uuid随机生成一个文件裸名
		   String uuid =UUID.randomUUID().toString().replaceAll("-","");
		   //获得文件类型（可以判断如果不是图片，禁止上传）
		   String contentType=aunt.getFile().getContentType();
		   if (!contentType.equals("image/jpeg")  && !contentType.equals("image/png") && !contentType.equals("image/gif")) {
			    resp.setContentType("text/html;charset=utf-8");
			    PrintWriter out = resp.getWriter();
			    out.flush();
			    out.println("<script>");
			    out.println("alert('请上传图片文件!');");
			    out.println("history.back();");
			    out.println("</script>");
			    return "shop/manager/category/addProduct.jsp";
		   } else {
		    //获得文件后缀名
		    String suffixName=contentType.substring(contentType.indexOf("/")+1); 
		    //得到文件名（文件名由文件裸名与后缀名组合而成）
		    filename=uuid+"."+suffixName; 
		    //获取商品实体类中的file属性赋值，而file属性是MultipartFile类型的，将前台上传的该图片保存至该本地路径的文件夹中
		    aunt.getFile().transferTo(new File(localPath+filename)); 
		   }
		  }
		  //把图片的相对路径保存至数据库
		  sqlPath = "auntImages/"+filename;
		  aunt.setImage(sqlPath); //设置商品实体类中的image属性的值
		  System.out.println(aunt.getImage());
		  
		homeAdminService.Aunt_add(aunt);
		model.addAttribute("msg","添加成功！");
	    return "redirect:toAunt.action";

	}
	

	/**
	 * 点击编辑按钮获取id
	 * @param id
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/toUpdateAunt.action")
	public String toUpdateAunt(String id,Model model,HttpSession session) {
		System.out.println("/toUpdateAunt.action");
		String forword="admin/Aunt_update";
		Aunt aunt = homeAdminService.updateAuntById(id);
		System.out.println(aunt);
		model.addAttribute("aunt", aunt);
		//session.setAttribute("aunt", aunt);
		System.out.println(forword);
		//返回客户信息展示页面
		return forword;
	}
		
	
	    /**
	     * 修改
	     * @param aunt
	     * @param model
	     * @param session
	     * @return
	     */
		@ResponseBody
		@RequestMapping("/updateAunt.action")
		public Integer updateAunt(@RequestBody Aunt aunt,Model model,HttpSession session) {
			  model.addAttribute("aunt", aunt);
			// session.setAttribute("aunt", aunt);
			 System.out.println("aunt.id= "+aunt.getId());
			 return homeAdminService.updateAuntModify(aunt);
			 
		}
		
		
		@RequestMapping("/insertAdmin.action")
		public String insertAdmin(Model model,Hadmin hadmin) {
			String forword="admin/Admin_add";
			homeAdminService.insertAdmin(hadmin);
			model.addAttribute("msg","添加成功!");
		    return forword;
		}
		
		
		
		/**
		 * 管理员页面操作
		 * @param id
		 * @param model
		 * @param session
		 * @return
		 */
		@RequestMapping("/toAdmin.action")
		public String toAdmin(Model model,HttpSession session,Hadmin hadmin,@RequestParam(defaultValue="1")Integer page,
				@RequestParam(defaultValue="10")Integer rows) {
			
			String forword="admin/Admin";
			Page<Hadmin> hadmins=homeAdminService.findAdminByCond2(page,rows,hadmin);
			model.addAttribute("page", hadmins);
			model.addAttribute("id", hadmin.getId());
			session.setAttribute("page", hadmins);
			session.setAttribute("id", hadmin.getId());
			
			return forword;
		}
		@RequestMapping("/toUpdateAdmin.action")
		public String toUpdateAdmin(String id,Model model,HttpSession session) {
			System.out.println("到达控制层");
			String forword="admin/Admin_update";
			Hadmin hadmin = homeAdminService.updateAdminById(id);
			System.out.println(hadmin);
			model.addAttribute("hadmin", hadmin);
			//session.setAttribute("aunt", aunt);
			//返回客户信息展示页面
			return forword;
		}
		@ResponseBody
		@RequestMapping("/updateAdmin.action")
		public Integer updateAdmin(@RequestBody Hadmin hadmin,Model model,HttpSession session) {
			  model.addAttribute("hadmin", hadmin);
			// session.setAttribute("aunt", aunt);
			 System.out.println("hadmin.id= "+hadmin.getId());
			 return homeAdminService.updateAdminModify(hadmin);
			 
		}
		
		
		
		/**
		 * 用户管理界面
		 * @param model
		 * @param session
		 * @param huser
		 * @param page
		 * @param rows
		 * @return
		 */
		@RequestMapping("/toUser.action")
		public String toUser(Model model,HttpSession session,Huser huser,@RequestParam(defaultValue="1")Integer page,
				@RequestParam(defaultValue="10")Integer rows) {
			
			String forword="admin/User";
			Page<Huser> husers=homeAdminService.findUserByCond2(page,rows,huser);
			model.addAttribute("page", husers);
			model.addAttribute("id", huser.getId());
			session.setAttribute("page", husers);
			session.setAttribute("id", huser.getId());
			
			return forword;
		}
		@RequestMapping("/User_add.action")
		public String User_add(Model model,Huser huser,HttpSession session) {
			homeAdminService.User_add(huser);
			model.addAttribute("msg","添加成功！");
		    return "redirect:toUser.action";

		}
		
		@RequestMapping("/toOrder.action")
		public String toOrder(Model model,HttpSession session,Order order,@RequestParam(defaultValue="1")Integer page,
				@RequestParam(defaultValue="6")Integer rows) {
			
			String forword="admin/Order";
			Page<Order> orders=homeAdminService.findOrderBy_Uid_Auntid(page,rows,order);
			model.addAttribute("uid", order.getUid());
			model.addAttribute("aunt_name", order.getAunt_name());
			model.addAttribute("page", orders);
			
			return forword;
		}
		
		@RequestMapping("/toNeed.action")
		public String toNeed(Model model,HttpSession session,Need need) {			
			String forword="admin/Need";
			List<Need> needs=homeAdminService.toNeed(need);//查询需求表所有信息
			model.addAttribute("need", needs);
		
			return forword;
		}
		
		
		@RequestMapping("/updateNeed2.action")//修改need状态为处理中
		public String updateNeed2(String id,Model model,Need need) {

			int need1 = homeAdminService.updateNeed2(id);
			model.addAttribute("need",need1);
			model.addAttribute("need",need);
		    return "redirect:toNeed.action";
		}
		
		@RequestMapping("/updateNeed3.action")//修改need状态为处理完毕
		public String updateNeed3(String id,Model model,Need need) {
			
			int need2 = homeAdminService.updateNeed3(id);
			model.addAttribute("need",need2);
		    return "redirect:toNeed.action";
		}
		
		
		@RequestMapping("/toupdateNeed4.action")
		public String toupdateNeed4(String id,Model model,HttpSession session) {
			String forword="admin/Need_beizhu";
			Need need = homeAdminService.findupdateNeed4ById(id);//根据id查询信息
			System.out.println(need);
			model.addAttribute("need",need);
			session.setAttribute("need", need);
			return forword;
		}
		@ResponseBody
		@RequestMapping("/updateNeed4.action")
		public String updateNeed4(@RequestBody Need need,Model model,HttpSession session) {
			
			int need4 =homeAdminService.updateNeed4(need);//修改备注
			
			model.addAttribute("need",need);
			session.setAttribute("need", need4);
			//返回客户信息展示页面
			return "1";
		}
		
		
		@RequestMapping("/toComment.action")
		public String toComment(Model model,HttpSession session,Comment comment,@RequestParam(defaultValue="1")Integer page,
				@RequestParam(defaultValue="8")Integer rows) {
			
			String forword="admin/Comment";
			Page<Comment> comments=homeAdminService.toComment(page,rows,comment);
			model.addAttribute("page", comments);
			return forword;
		}
		
		@RequestMapping("/deleteComment.action")
		public String deleteComment(String id,Comment comment,Model model) {
			homeAdminService.deleteComment(id);
			
			return "redirect:toComment.action";
		}
	
	
	
}
