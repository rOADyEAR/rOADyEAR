## JavaWeb课程笔记

---
学习大略:
![路线](pic\Course.png)
Web开发三大平台
- Java
- Microsoft .Net
- PHP


---

## HTTP(HyperText Transfer Protocol)
计算机网络协议簇中的**应用层协议**，第一版为0.9，常用为1.0，现在为1.1（https和html5等）
#### URL（Uniform Resource Locator）
protocol://host[:port][/context][/resource][?query=string]
> 协议一般为https或http，也可以为ftp，指定和服务器通信的方式
> 主机可以是ip地址，也可以是能被DNS解析的主机名
> 后边俩不解释了（资源路径和资源名、请求参数）
##### IP和端口
IP(Internet Protocol)地址是网络层协议的概念,版本分为IPV4和IPV6,功能分为A-E五种,还有一些特殊的.
> DNS(Domain Name System 域名系统):为方便记忆,用域名代替ip.(也就有了域名挟持和攻击)

端口(Port)是传输层协议的概念,一个16bit的整数,每个数字代表着计算机上**一个应用程序**和**内存中的一段缓存区域**
>Web服务器软件(Apache)默认工作在80端口,Tomcat(8080),HTTPS服务默认443端口.

##### HTTP请求和响应
包含请求头,请求行和请求体(***包含什么? 请求方式?*** )
响应行,响应头,响应体(***状态码含义? 常用内容类型?***)

## WEB开发
### Web服务器
概念:指安装了Web服务器应用(软件)的**主机**(硬件),软件通常有Apache或Nginx,
功能:
- 处理HTTP协议栈
- 文件系统映射及I/O
- 多线程处理请求/响应
- 日记记录
- 代理服务
- 等
### Web容器
容器是为其中程序提供一个一致统一运行环境的软件,降低应用程序的复杂性,给Web应用的服务器端程序提供环境的就叫Web容器.
常见的Web容器有Tomcat(Servlet),JBoss(EJB容器)和IIS(ASP容器).
主要功能:
- 通信支持
- 多线程支持
- 生命周期管理
- 等

<img src="pic\Container.png" alt="容器与服务器关系" height=200px>
<img src="pic\Container_2.png" alt="容器在复杂Web程序中重要" height=200px>

### Tomcat
概念:Web程序中常用的开源Web容器;
- 准确定位是Java Web服务器+Web容器
- 作为Web服务器:有Apache的部分功能,如实现Http协议,处理和响应请求,默认监听8080Port
- 作为Web容器:负责编译,运行和部署Servlet/JSP
- ***Tomcat目录文件?***

### Servlet
***Servlet API的接口?***
生命周期:
- 加载(init())
- 实例化(也许也是init()?)
- 处理客户端请求(service())
- 销毁(destory())
- 


### XML(eXtensible Markup Language)
与HTML同属标记语言(***异同?***)
规范:有效的XML有两种规范
- DTD(Document Type Definition)
![Alt text](pic\DTD_img.png)
- XSD(XML Schema Definition)
- 




### WEB中的作用域
由小到大:
- 页面范围(Page):一个Servlet或一个JSP页面
- 请求范围(Request):一个请求与被响应之间
- 会话范围(Session):整个会话持续期间
- 应用范围(Application):服务器运行过程中(ServletContext)
Web对象通过将数据放在对应作用域实现数据作用域控制,作用域对象提供SetAttribute和GetAttribute方法.

### Web应用的组件关联关系
web应用的优点便是能聚合大量的资源,而一个组件的信息往往不多,需要将其他组件关联起来
1. 请求转发:
   请求转发是将客户端的请求转发给同一个应用程序的其他组件.
   客户端不知道服务端进行了转发,使用ServletAPI中的RequestDispatcher接口的forward()实现,使用request调用(看得出来还没响应客户端,所以没变),同时将req和resp给到转发到的组件.
   实现方式:request.getRequestDispatcher("target").forward();
2. 请求重定向:
   表明该次请求已完成,响应给客户端.客户端根据响应发起一次新的请求(req和resp不一样了),通过response调用
   实现方式:response.sendRedirect("target");
3. 页面包含

### 会话跟踪
前提:HTTP协议本质是一个无状态协议,通过请求-响应实现,无法保持连接,维持会话状态.
概念:会话跟踪就是通过其他方式让客户端与服务器之间保持链接,维持会话状态.
常用方法:
1. URL重写:
   以key=value形式在URL中的Token来作为参数,有着诸多限制
2. 隐藏域:
   与URL重写类似,将Token隐藏在form表单中
3. 客户端保存信息:Cookie
4. 服务端保持信息:HttpSession:
   基本原理:当用户第一次访问服务器,服务器创建Session对象并生成唯一的ID(JSESSIONID),将id以Cookie或Url的方式传给浏览器,其余信息以key=value形式保存在httpSession对象中

## MVC和JDBC

##### JavaBean
JavaBean是一个特殊的Java类，一般指用于封装数据和业务逻辑的实体类。

### MODEL Ⅰ
概念：JSP+JavaBean，JSP负责数据显示和请求逻辑，JavaBean负责业务逻辑部分。

### MODEL Ⅱ
<img src="pic\MVC.png" alt="MVC" height = 200px>  

JavaWeb中的MVC具体体现为:  
<img src="pic\MVC_2.png" alt="MVC" height = 200px>

一般会将Model细分为:完成业务的业务Bean,实现持久化操作的DAO和仅用于表达数据的值对象POJO

## JSP（Java动态网页技术：Java Server Page）
概念：用于分开动态与静态网页，解决Servlet编写服务器导致的动静态代码混合的问题
实现:JSP在用户第一次请求时会被转译成Servlet,可看作运行时的Servlet
语法构成：
1. 静态内容：HTML静态文本
2. 指令(<%@ 指令 %>):  提供整个jsp页面的相关信息,必须放在最底下.
   1. 类型:page include taglib
3. 表达式(%= 表达式 %): 
4. 小脚本(<% Java代码 %>):
5. 声明(<%! 方法或变量 %>):
6. 标准动作(\<jsp:动作名\>): 常用的代码块用一个符号表示.
   jsp2.4提供了8个,如\<jsp:inlcude\>\<jsp:usebean\>
7. 注释(<%-- --%>):
8. 隐式对象: 不需声明就可直接使用的(JSP2.4中的)8个对象


### EL(Expression Language)
EL表达式语言是JSP的重要特性之一,提供了在JSP表达式范围外使用运行时表达式的功能,
主要包括:
1. 基于命名空间和嵌套的属性访问;
2. 对集合和操作符的访问;
3. 一组隐式对象和映射到Java类中方法的可拓展函数.

基本语法:${Expression}
可在HTML的任何位置完成取值和显示
常用于表达式求值,访问作用域变量和JavaBean,访问数组和集合(如遍历集合显示时,如使用某个对象时)
EL提供如下运算符操作:
- []和. 操作 : 用于对象属性或数组,集合
- Java支持的算术,逻辑,关系.
- empty运算符

EL有自己的关键字:...(不再列举)

### JSTL
常用JSTL标签:
- 通用标签
  - set
  - remove
  - out
- 条件标签
  - if
  - choose
- 迭代标签
  - forEach


## JavaScript
### 语法
#### 函数
<img src="pic\JS_Func.png" alt="JS_Func" height = 200px>

函数的特殊用法:
- 函数表达式(或称 匿名函数) 
  > 可用一个变量指向匿名函数
  > ```JavaScript
  > var area = function(width,height){
  > return width*height;
  > }
  > var size = area();
  > ```
  >  以上
  
- 立即执行匿名函数
  ~~~JavaScript
  var area = (function(){
   var width =3;
   var height =5;
   return width*height;
  }());
   ~~~

#### 对象
概览:
<img src="pic\JS_Class.png" alt="JS_Func" height = 200px>
>对象中方法为给一个变量赋值一个匿名函数

创建:
1. 创建对象然后添加属性和方法
2. 创建带有属性和方法的对象
***访问方式?可以动态删减和添加?***

#### 内置对象
- 浏览器对象模型BOM:获取Windows当前浏览器窗口,如History,Location;
- 文档对象模型(DOM):获取Document文档,如\<HTML\>中的元素,URL,domain;
- 全局JavaScript对象
<img src="pic\JS_InClass.png" alt="JS_Func" height = 350px>
***各自的方法和属性?***

##### DOM
文档对象模型规定了浏览器怎样创建HTML元素,以及JavaScript怎样操作HTML元素;
- 当浏览器加载Web界面,会在内存中创建页面模型--DOM树对象模型
- JavaScript操作HTML是通过一系列API--DOM API

##### 网页事件
概念:DOM模型针对浏览器和网页内容规定了一系列用户相互行为,称为**网页事件**(***事件分类?***)
处理:使用JavaScript进行事件处理:
- 选定元素
- 事件绑定
  - HTML方法
  - 传统DOM方法
  - 事件监听方式
- 事件处理

## AJAX

### XMLHttpRequest对象
是实现AJAX技术的核心技术，是一种支持异步通讯的机制
创建：统一后：var xhr = new XMLHttpRequest();
***常用方法？***
流程：
<img src="pic\AJAX_Procedure.png" alt="JS_Func" height = 200px>

## JQuery

基本语法：

文档就绪函数：为了防止HTML文档在完全加载之前运行jQuery代码，一般会将所有的jQuery调用放到文档就绪函数中。
