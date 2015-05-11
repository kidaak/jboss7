package org.apache.jsp.tiles;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class banner_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fdefaultValue_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fdefaultValue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fdefaultValue_005fnobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      response.addHeader("X-Powered-By", "JSP/2.2");
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
      out.write("<table class=\"noprint\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td nowrap align=\"right\">\r\n");
      out.write("      <a href=\"javascript:goToAnchor('main');\" title=\"skip to main\"><img src=\"htdocs/images/spacer.gif\" height=\"2\" width=\"1\" border=\"0\" alt=\"skip to main\"></a>\r\n");
      out.write("      <a href=\"");
      if (_jspx_meth_util_005fpropertyMgr_005f0(_jspx_page_context))
        return;
      out.write("\"><img src=\"htdocs/images/logo_dre.gif\" height=\"90\" width=\"150\" border=\"0\" alt=\"Official Seal of the Department of Real Estate\"></a><img src=\"htdocs/images/spacer.gif\" height=\"89\" width=\"130\" border=\"0\" alt=\"\">\r\n");
      out.write("    </td>\r\n");
      out.write("    <td width=\"100%\" align=\"middle\">\r\n");
      out.write("      <img src=\"htdocs/images/logo_realestate.gif\" height=\"66\" width=\"350\" border=\"0\" alt=\"Arizona Department of Real Estate's Real Estate Licensing\">\r\n");
      out.write("    </td>\r\n");
      out.write("    <td nowrap align=\"right\"><a href=\"");
      if (_jspx_meth_util_005fpropertyMgr_005f1(_jspx_page_context))
        return;
      out.write("\"><img src=\"htdocs/images/aays_dre.gif\" height=\"56\" width=\"91\" border=\"0\" alt=\"text: Arizona @ Your Service\"></a><img src=\"htdocs/images/spacer.gif\" height=\"1\" width=\"20\" border=\"0\" alt=\"\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_util_005fpropertyMgr_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  util:propertyMgr
    com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag _jspx_th_util_005fpropertyMgr_005f0 = (com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag) _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fdefaultValue_005fnobody.get(com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag.class);
    _jspx_th_util_005fpropertyMgr_005f0.setPageContext(_jspx_page_context);
    _jspx_th_util_005fpropertyMgr_005f0.setParent(null);
    // /tiles/banner.jsp(7,15) name = key type = null reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_util_005fpropertyMgr_005f0.setKey("DREHome");
    // /tiles/banner.jsp(7,15) name = defaultValue type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_util_005fpropertyMgr_005f0.setDefaultValue("http://www.re.state.az.us/");
    int _jspx_eval_util_005fpropertyMgr_005f0 = _jspx_th_util_005fpropertyMgr_005f0.doStartTag();
    if (_jspx_th_util_005fpropertyMgr_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fdefaultValue_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fdefaultValue_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f0);
    return false;
  }

  private boolean _jspx_meth_util_005fpropertyMgr_005f1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  util:propertyMgr
    com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag _jspx_th_util_005fpropertyMgr_005f1 = (com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag) _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fdefaultValue_005fnobody.get(com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag.class);
    _jspx_th_util_005fpropertyMgr_005f1.setPageContext(_jspx_page_context);
    _jspx_th_util_005fpropertyMgr_005f1.setParent(null);
    // /tiles/banner.jsp(12,38) name = key type = null reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_util_005fpropertyMgr_005f1.setKey("PortalHome");
    // /tiles/banner.jsp(12,38) name = defaultValue type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_util_005fpropertyMgr_005f1.setDefaultValue("http://az.gov/");
    int _jspx_eval_util_005fpropertyMgr_005f1 = _jspx_th_util_005fpropertyMgr_005f1.doStartTag();
    if (_jspx_th_util_005fpropertyMgr_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fdefaultValue_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fdefaultValue_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f1);
    return false;
  }
}
