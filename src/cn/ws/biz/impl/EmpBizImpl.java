package cn.ws.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.ws.biz.EmpBiz;
import cn.ws.dao.EmpMapper;
import cn.ws.entity.Dept;
import cn.ws.entity.Emp;

/**
 * 
 * @author sj
 * @date 2016-10-26
 * @opr  创建实现类
 * 
 * @author sj2
 * @date 2016-10-27
 * @opr 修改查询列表方法
 */
@Service 
public class EmpBizImpl implements EmpBiz{

	@Resource
	 private EmpMapper mapper;
	
	/**
	 * 
	 */
	@Override
	public List<Emp> getEmpAll() {
		
		return mapper.getEmpAll();
	}

	@Override
	public List<Dept> getDeptAll() {
		// TODO Auto-generated method stub
		return mapper.getDeptAll();
	}


	@Override
	/**
	 * @work 增加用户
	 * @param 员工实体对象
	 */
	public int addEmp(Emp emp) {
		// TODO Auto-generated method stub
		return mapper.addEmp(emp);
	}

	@Override
	public int delEmp(Emp emp) {
		// TODO Auto-generated method stub
		return mapper.delEmp(emp);
	}

	@Override
	public Emp getEmpById(Emp emp) {
		// TODO Auto-generated method stub
		return mapper.getEmpById(emp);
	}

	@Override
	public int upEmp(Emp emp) {
		// TODO Auto-generated method stub
		return mapper.upEmp(emp);
	}
 
}
