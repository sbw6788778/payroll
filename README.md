# payroll
maven 创建的ssm员工管理和薪水支付项目
2017 8.22现在系统还需要dubug和优化的内容有：（high priority）
  1 登录页面在登录失败时会重定向到另一个页面（这个页面有问题）
  2 个人的profile显示的优化，可以找一个user——profile的模版来：https://www.bootply.com/tagged/profile
  3 在admin中添加新的功能：来修改员工的类型
  未来要做的一些优化：
  1 分页的加入防止在员工变多是请求变慢（这个可能也是需要后端来提供接口，比如一次之返回5个员工的信息）、
  2 个人的工作时间表和绩效表系统中并没有做一个限制，可以无限的提交，防止这种恶意的提交
  