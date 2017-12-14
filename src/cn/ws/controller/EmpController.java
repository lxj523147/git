package cn.ws.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ws.biz.EmpBiz;
import cn.ws.entity.Dept;
import cn.ws.entity.Emp;

@Controller
public class EmpController {
	@Resource
	private EmpBiz empBiz;
	
	//第一次访问页面
	@RequestMapping("index.html")
	public String index(){
		return "redirect:/getlist";
	}
	
	//获取员工列表
	@RequestMapping("/getlist")
	public String getList(HttpSession session){
		List<Emp> Emplist=empBiz.getEmpAll();
		session.setAttribute("emplist",Emplist);
		return "list";
		
	}
	
	
	//获取部门列表
	@RequestMapping("/add")
	public String getDeptlist(HttpSession session){
		List<Dept> Deptlist=empBiz.getDeptAll();
		session.setAttribute("deptlist", Deptlist);
		return "addEmp";
	}
	
	//添加员工
	@RequestMapping("/addEmp")
	public String addEmp(Emp emp,HttpSession session){
		
		int num=empBiz.addEmp(emp);
		session.setAttribute("empnum",num);
		return "empSuccee";
	}
	
	
	//删除员工
	@RequestMapping("/delete/{eid}")
	public String deleteEmp(@PathVariable int eid,HttpServletRequest request){
		Emp emp=new Emp();
		emp.setEid(eid);
		int num=empBiz.delEmp(emp);
		System.out.println(num);
		request.setAttribute("num",num);
		return "redirect:/index.html";
	}
	
	
	@RequestMapping("/upEmpById/{eid}")
	public String getEmpById(@PathVariable int eid,HttpSession session){
		Emp emp=new Emp();
		emp.setEid(eid);
		Emp Empinfo=empBiz.getEmpById(emp);
		session.setAttribute("emp",Empinfo);
		System.out.println(Empinfo.getGender());
		
		List<Dept> Deptlist=empBiz.getDeptAll();
		session.setAttribute("deptlist", Deptlist);
		return "upEmp";
		
	}
	
	@RequestMapping("update")
	public String updateEmp(Emp emp,HttpSession session){
		int num=empBiz.upEmp(emp);
		session.setAttribute("upnum",num);
		return "redirect:/index.html";
	}
}
