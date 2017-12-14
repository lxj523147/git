package cn.ws.dao;

import java.util.List;

import cn.ws.entity.Dept;
import cn.ws.entity.Emp;

public interface EmpMapper {
	//获取员工所有信息
   List<Emp> getEmpAll();
 
   //获取部门所有信息
   List<Dept> getDeptAll();
   
   //添加员工
   int addEmp(Emp emp);
   
   //根据id删除员工
   int delEmp(Emp emp);
  
   //根据id获取员工信息
   Emp getEmpById(Emp emp);
   
   //修改员工
   int upEmp(Emp emp);
   
   
}
