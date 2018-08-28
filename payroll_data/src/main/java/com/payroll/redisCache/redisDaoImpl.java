package com.payroll.redisCache;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import com.payroll.service.EmployeeUser;

public class redisDaoImpl implements redisDao{
	@Autowired
	RedisTemplate<Integer, EmployeeUser> redis;
	public EmployeeUser getEmployee(int id) {
		// TODO Auto-generated method stub
		return redis.opsForValue().get(id);
	}
	public void removeEmployee(int id) {
		// TODO Auto-generated method stub
		redis.delete(id);
	}
	public void setEmployee(int id ,EmployeeUser e) {
		// TODO Auto-generated method stub
		redis.opsForValue().set(id, e);
	}
	public void removeAllEmployee() {
		// TODO Auto-generated method stub
		
	}
}
