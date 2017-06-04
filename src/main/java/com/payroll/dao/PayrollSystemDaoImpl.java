package com.payroll.dao;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.payroll.service.BiweeklySchedule;
import com.payroll.service.CommissionedClassification;
import com.payroll.service.DirectMethod;
import com.payroll.service.Employee;
import com.payroll.service.EmployeeUser;
import com.payroll.service.HoldMethod;
import com.payroll.service.HourlyClassification;
import com.payroll.service.MailMethod;
import com.payroll.service.MonthlySchedule;
import com.payroll.service.PaymentClassification;
import com.payroll.service.PaymentMethod;
import com.payroll.service.SalariedClassification;
import com.payroll.service.SalesReceipt;
import com.payroll.service.ServiceCharge;
import com.payroll.service.TimeCard;
import com.payroll.service.UnionAffiliation;
import com.payroll.service.WeeklySchedule;
public class PayrollSystemDaoImpl extends SqlSessionDaoSupport implements PayrollSystemDao {

	
	public void AddEmployee(int id, Employee employee) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		session.insert("addEmployee", employee);
		savePaymentMethod(employee);
		savePaymentClassification(employee);
	}
	private void savePaymentMethod( Employee employee){
		SqlSession session=this.getSqlSession();
		PaymentMethod pm=employee.getMethod();
		if(pm instanceof DirectMethod){
			session.insert("saveDirectMethod", employee);
		}	
		else if(pm instanceof MailMethod){
			session.insert("saveMailMethod", employee);
		}
		else return;
	}
	private void savePaymentClassification(Employee employee){
		SqlSession session=this.getSqlSession();
		PaymentClassification pc=employee.getClassification();
		if(pc instanceof HourlyClassification){
			session.insert("saveHourlyClassification", employee);
		}
		else if(pc instanceof SalariedClassification){
			session.insert("saveSalariedClassification", employee);
		}
		else if(pc instanceof CommissionedClassification){
			session.insert("saveCommissionedClassification", employee);
		}
		else return;
	}
	
	public Employee GetEmployee(int id){
		SqlSession session=this.getSqlSession();
		Employee e=session.selectOne("GetEmployee", id);
		if(e==null) return null;
		loadSchedule(e,session);
		loadPaymentMethodTable(e,session);
		loadTimeCard(e,session);
		loadSalesreceipt(e,session);
		loadAffiliation(e,session);
		loadServiceCharge(e,session);
		return e;
	 }
	private void loadServiceCharge(Employee e,SqlSession session){
		if(e.getAffiliation() instanceof UnionAffiliation) {
			UnionAffiliation ua=(UnionAffiliation)e.getAffiliation();
			int memId=ua.getMemId();
			List<ServiceCharge> l=null;
			l=session.selectList("loadServiceCharge",memId);
			for(ServiceCharge s:l){
				ua.addServiceCharge(s.getDate(), s);;
			}
		}
	}
	private void loadAffiliation(Employee e,SqlSession session){
		 	int id=e.getId();
		 	Integer affiliationId=session.selectOne("loadAffiliation", id);
		 	if(affiliationId!=null){
		 		double dues=session.selectOne("loadAffiliationDues", affiliationId);
		 		e.setAffiliation(new UnionAffiliation(affiliationId, dues)); 
		 	}			
	}
	private void loadSalesreceipt(Employee e,SqlSession session){
		 if(e.getClassification() instanceof CommissionedClassification){
			 CommissionedClassification cc=(CommissionedClassification)e.getClassification();
			 int id=e.getId();
			 List<SalesReceipt> l;
			 l=session.selectList("loadSalesreceipt", id);
			 for(SalesReceipt s:l){
				 cc.addSalesReceipt(s); 
			 }
		 }
	 }
	private void loadTimeCard(Employee e,SqlSession session){
		 if(e.getClassification() instanceof HourlyClassification){
			 HourlyClassification hc=(HourlyClassification)e.getClassification();
			 int id=e.getId();
			 List<TimeCard> l;
			 l=session.selectList("loadTimeCard", id);
			 if(l!=null){
				 for(TimeCard c:l){
					 hc.addTimeCard(c); 
				 }
			 }
		 }
	 }
	 private void loadSchedule(Employee e,SqlSession session){
		 	int id=e.getId();
		 	String scheduletype=session.selectOne("loadSchedule",id);
			 if(scheduletype.equals("周支付")){
				 e.setSchedule(new WeeklySchedule());
				 e.setClassification((HourlyClassification)session.selectOne("loadHourlyClassification",id));
			 }
			 else if(scheduletype.equals("两周支付")){
				 e.setSchedule(new BiweeklySchedule());
				 e.setClassification((CommissionedClassification)session.selectOne("loadCommissionedClassification",id));
			 }
			 else if(scheduletype.equals("月支付")){
				 e.setSchedule(new MonthlySchedule());
				 e.setClassification((SalariedClassification)session.selectOne("loadSalariedClassification",id));
			 }
			 else return;
	 }
	 private void loadPaymentMethodTable(Employee e,SqlSession session){
		 	int id=e.getId();
		 	String paymentMethod=session.selectOne("loadPaymentMethod",id);
			 if(paymentMethod.equals("存入银行")){
				 e.setMethod((DirectMethod)session.selectOne("loadDirectMethod", id));
			 }
			 else if(paymentMethod.equals("支票保存在出纳人员")){
				 e.setMethod(new HoldMethod());
			 }
			 else if(paymentMethod.equals("支票邮寄")){
				 e.setMethod((MailMethod)session.selectOne("loadMailMethod", id));
			 }
			 else
				 e.setMethod(new HoldMethod()); 
	 }

	
	public void DeleteEmployee(int id) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		session.delete("deleteEmployee", id);
	}

	public Employee GetUnionMember(int memid) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		int id=session.selectOne("getUnionMember", memid);
		return GetEmployee(id);
	}
	public void addUnionMember(int memId, double dues, Employee e) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		HashMap<String, Object> m=new HashMap();
		m.put("memId", memId);m.put("dues", dues);m.put("id", e.getId());
		session.insert("addUnionMember", m);
	}

	public void removeUnionMember(int memId) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		session.delete("removeUnionMember", memId);
	}


	public List<Integer> GetAllEmployeeIds() {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		List<Integer> id=session.selectList("getAllEmployeeIds");
		return id;
	}

	public void addTimeCard(int id, TimeCard t) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		HashMap<String, Object> m=new HashMap();
		m.put("id",id);m.put("t",t);
		session.insert("addTimeCard",m);
	}

	public void addSalesReceipt(int id, SalesReceipt sr) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		HashMap<String, Object> m=new HashMap();
		m.put("id",id);m.put("t",sr);
		session.insert("addSalesReceipt",m);
	}
	public void changeAddress(int id, String address) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		HashMap<String, Object> m=new HashMap();
		m.put("id",id);m.put("address",address);
		session.update("changeAddress", m);
	}
	public void changeName(int id, String newName) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		HashMap<String, Object> m=new HashMap();
		m.put("id",id);m.put("name",newName);
		session.update("changeName", m);
	}
	public void changeMethod(Employee e) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		HashMap<String, Object> m=new HashMap();
		m.put("id",e.getId());m.put("method",e.getMethod().toString());
		session.update("changeMethod",m);
		deleteMethod(e);
		savePaymentMethod(e);
	}
	public void addServiceCharge(int memId, ServiceCharge sc) {
		// TODO Auto-generated method stub
		SqlSession session=this.getSqlSession();
		HashMap<String, Object> m=new HashMap();
		m.put("id",memId);m.put("t",sc);
		session.insert("addServiceCharge",m);
	}
	public void AddRegisterMessage(int id,String username,String password,String email){
		SqlSession session=this.getSqlSession();
		HashMap<String, Object> m=new HashMap();
		System.out.println(id);
		m.put("id",Integer.valueOf(id));
		m.put("username",username);
		m.put("password",password);
		m.put("email",email);
		System.out.println(m.get("id"));
		session.insert("addRegisterMessage", m);
	}
	public void deleteMethod(Employee e){
		SqlSession session=this.getSqlSession();
		int id=e.getId();
		session.delete("deleteMethod", id);
	}
	public String loginEmployeeVerification(String username,String password){
		SqlSession session=this.getSqlSession();
		String password_ture= session.selectOne("loginEmployeeVerification", username);
		if(password.equals(password_ture))
			 return "验证成功";
		 else return "验证失败";
	}
	public String loginAdminVerification(String username,String password){
		SqlSession session=this.getSqlSession();
		String password_ture= session.selectOne("loginAdminVerification", username);
		if(password.equals(password_ture))
			 return "验证成功";
		 else return "验证失败";
	}
	public int getIdByUsername(String username){
		SqlSession session=this.getSqlSession();
		Integer id=session.selectOne("getIdByUsername", username);
		if(id==null) return 0;
		else 
			return id;
	}
	public String getEmailById(int id){
		SqlSession session=this.getSqlSession();
		String email=session.selectOne("getEmailById",id);
		return email;
	}
	public EmployeeUser getRegisterMessage(int id){
		SqlSession session=this.getSqlSession();
		EmployeeUser u=session.selectOne("getRegisterMessage", id);
		return u;
	}
}
