# payroll
maven 创建的ssm员工管理和薪水支付项目<br>
2017 8.22现在系统还需要dubug和优化的内容有：（high priority）<br>
  1 登录页面在登录失败时会重定向到另一个页面（这个页面有问题）<br>
  2 个人的profile显示的优化，可以找一个user——profile的模版来：https://www.bootply.com/tagged/profile<br>
  3 在admin中添加新的功能：来修改员工的类型<br>
  未来要做的一些优化：<br>
  1 分页的加入防止在员工变多是请求变慢（这个可能也是需要后端来提供接口，比如一次之返回5个员工的信息）、<br>
  2 个人的工作时间表和绩效表系统中并没有做一个限制，可以无限的提交，防止这种恶意的提交<br>
  2017.8.23 <br>
  1 选择好了一个模版<br>
  2 把index的页面也改了<br>
  3 现在想做的是怎么通过后端来提供接口来实现交互而不是把页面也返回去，这样不太灵活。<br>
  直接用ajax来请求想要的数据，对于这个页面来说需要两个接口，一个是返回员工的所有个人信息用来显示，第二个是用来修改员工的一些信息，<br>
第一个已经实现了，第二个现在成熟的方法是不用所有的修改信息都提交，只要提交需要修改的信息，后台先要把所有的修改放在一个urlmapping之下，判断是不是null，就可以<br>
知道那些要修改了。要不要显示一个回显的信息。现在主要是先做前端，来驱动后端。<br>
2017.09.28<br>
  在原来的基础上加入了缓存使用redis来做。<br>
  在查找数据的时候，先要在内存中查找，如果没有命中就会在db中查找然后，把数据更新到缓存中，然后返回数据。<br>
  在更新数据的时候，现将把数据写入db中，然后缓存中的数据删除掉。<br>
  在新增用户的时候也是需要现将数据写入db中然后将用户的信息加载到缓存中来。<br>
  在删除用户的时候，也需要删除相应的缓存数据。
  然后是关于缓存数据的类型的存储。key当然是id，然后value的值是employee对象呢还是useremployee。当然接口返回的数据是第二个。
  还有个问题是在用户登录的时候是按照名字来登录的，还需要更具name在数据库中查找id，还要建立一个二级索引可以。
