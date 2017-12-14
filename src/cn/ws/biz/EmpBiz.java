package cn.ws.biz;

import java.util.List;

import cn.ws.entity.Dept;
import cn.ws.entity.Emp;

public interface EmpBiz {
	List<Emp> getEmpAll();

	List<Dept> getDeptAll();

	int addEmp(Emp emp);

	int delEmp(Emp emp);

	Emp getEmpById(Emp emp);

	int upEmp(Emp emp);
}
