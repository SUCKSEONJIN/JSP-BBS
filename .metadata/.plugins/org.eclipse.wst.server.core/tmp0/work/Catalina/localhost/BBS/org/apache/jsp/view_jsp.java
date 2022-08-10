/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.59
 * Generated at: 2022-08-10 13:38:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import bbs.Bbs;
import bbs.BbsDAO;

public final class view_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("bbs.Bbs");
    _jspx_imports_classes.add("bbs.BbsDAO");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"content-Type\" content=\"text/html;charset=UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("<title>JSP 웹 게시판</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("	a ,a:hover {\r\n");
      out.write("	color: #000000;\r\n");
      out.write("	text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");

	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}					
	
	int bbsID = 0;
	if(request.getParameter("bbsID") != null){
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if(bbsID == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href= 'bbs.jsp'");
		script.println("</script>");		
	}
	
	Bbs bbs = new BbsDAO().getBbs(bbsID);

      out.write("\r\n");
      out.write("	<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("		<a class=\"navbar-brand\" href=\"main.jsp\">JSP 게시판 웹사이트</a>\r\n");
      out.write("		<div class=\"navbar-header\">\r\n");
      out.write("			<button type=\"button\" class=\"navbar-toggler\"\r\n");
      out.write("				data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-controls=\"bs-example-navbar-collapse-1\"\r\n");
      out.write("				aria-expanded=\"false\" aria-label=\"Toggle navigation\">			\r\n");
      out.write("				<span class=\"navbar-toggler-icon\"></span>				\r\n");
      out.write("			</button> 					\r\n");
      out.write("		</div>\r\n");
      out.write("		\r\n");
      out.write("		<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("			<ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("			 <li class=\"nav-item active\">\r\n");
      out.write("			  <a class=\"nav-link active\" href=\"main.jsp\">메인<span class=\"sr-only\"></span></a>\r\n");
      out.write("			 </li>			 			\r\n");
      out.write("			 <li class=\"nav-item\">\r\n");
      out.write("			 <a class=\"nav-link active\" href=\"bbs.jsp\">게시판</a>\r\n");
      out.write("			 </li>\r\n");
      out.write("			 </ul>\r\n");
      out.write("				 ");

				 	if(userID == null){
				 
      out.write("\r\n");
      out.write("				<ul class=\"dropdown\">\r\n");
      out.write("		        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("		          접속하기\r\n");
      out.write("		        </a>\r\n");
      out.write("		        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("		          <li><a class=\"dropdown-item\" href=\"login.jsp\">로그인</a></li>\r\n");
      out.write("		          <li><a class=\"dropdown-item\" href=\"join.jsp\">회원가입</a></li>		          		          \r\n");
      out.write("		        </div>\r\n");
      out.write("		      	</ul>\r\n");
      out.write("		      	");

				 	}else{
		      	
      out.write("			\r\n");
      out.write("		      	<ul class=\"nav navbar-nav\">\r\n");
      out.write("		      		<li class=\"dropdown\">\r\n");
      out.write("		      			<a href=\"#\" class=\"dropdown-toggle\"\r\n");
      out.write("		      			data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\"\r\n");
      out.write("		      			aria-expanded=\"false\">회원관리</a>\r\n");
      out.write("		      			<ul class=\"dropdown-menu\">\r\n");
      out.write("		      				<li><a href=\"logoutAction.jsp\">로그아웃</a></li>\r\n");
      out.write("		      			</ul>\r\n");
      out.write("		      		</li>		      				\r\n");
      out.write("		      	</ul>\r\n");
      out.write("		      	");

				 	}
		      	
      out.write("			\r\n");
      out.write("		</div>					\r\n");
      out.write("	</nav>\r\n");
      out.write("	<div class=\"container\">\r\n");
      out.write("		<div class=\"row\">		 \r\n");
      out.write("			<table class=\"table table-striped\" style=\"text-align: center; border: 1px solid #dddddd\">\r\n");
      out.write("				<thead>\r\n");
      out.write("					<tr>\r\n");
      out.write("						<th colspan=\"3\" style=\"background-color: #eeeeee; text-align: center;\">게시판 글보기</th>\r\n");
      out.write("					</tr>\r\n");
      out.write("			</thead>\r\n");
      out.write("			<tbody>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td style=\"width: 20%;\">글 제목</td>\r\n");
      out.write("					<td colspan=\"2\">");
      out.print( bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") );
      out.write("</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>									\r\n");
      out.write("					<td>작성자</td>\r\n");
      out.write("					<td colspan=\"2\">");
      out.print(bbs.getUserID() );
      out.write("</td>									\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td>작성일자</td>\r\n");
      out.write("					<td colspan=\"2\">");
      out.print( bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11, 13)+ "시" + bbs.getBbsDate().substring(14,16) + "분" );
      out.write("</td>	\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td>내용</td>\r\n");
      out.write("					<td colspan=\"2\" style=\"min-height: 200px; text-align: left;\">");
      out.print( bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") );
      out.write("</td>\r\n");
      out.write("				</tr>				\r\n");
      out.write("			</tbody>			\r\n");
      out.write("		</table>\r\n");
      out.write("		<a href=\"bbs.jsp\" class=\"btn btn-primary\">목록</a>\r\n");
      out.write("		");

			if(userID != null && userID.equals(bbs.getUserID())){
		
      out.write("				\r\n");
      out.write("				<a href= \"update.jsp?bbsID=");
      out.print( bbsID );
      out.write("\"></a>\r\n");
      out.write("				<a href=\"deleteAction.jsp?bbsID=");
      out.print( bbsID );
      out.write("\" class=\"btn btn-primary\">삭제</a>		\r\n");
      out.write("		");

			}
		
      out.write("\r\n");
      out.write("			<div class= \"col-12\">\r\n");
      out.write("				<div class=\"float-right\"><input type=\"submit\" class=\"btn btn-primary\" value=\"글쓰기\"></button></div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>	\r\n");
      out.write("</div>\r\n");
      out.write("	<script src=\"https://code.jquery.com/jquery-3.1.1.min.js\"></script>\r\n");
      out.write("	<script src=\"js/bootstrap.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
