package org.apache.jsp.tiles;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fhtml_005flink_0026_005fstyleClass_005faction;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fhtml_005flink_0026_005fstyleClass_005faction = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fhtml_005flink_0026_005fstyleClass_005faction.release();
    _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.release();
    _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.release();
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table class=\"noprint\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#ffffff\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td bgcolor=\"#FFFFFF\"><img src=\"htdocs/images/spacer.gif\" height=\"3\" width=\"1\" border=\"0\" alt=\"\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td bgcolor=\"#666666\"><img src=\"htdocs/images/spacer.gif\" height=\"1\" width=\"1\" border=\"0\" alt=\"\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td bgcolor=\"#CCCCCC\" align=\"center\">\r\n");
      out.write("        ");
      if (_jspx_meth_html_005flink_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        <img src=\"htdocs/images/icon_pipe_gray.gif\" height=\"15\" width=\"32\" border=\"0\" align=\"middle\" alt=\"\">\r\n");
      out.write("        <a href=\"");
      if (_jspx_meth_util_005fpropertyMgr_005f0(_jspx_page_context))
        return;
      out.write("\" class=\"grayText\">");
      if (_jspx_meth_bean_005fmessage_005f1(_jspx_page_context))
        return;
      out.write("</a>\r\n");
      out.write("        <img src=\"htdocs/images/icon_pipe_gray.gif\" height=\"15\" width=\"32\" border=\"0\" align=\"middle\" alt=\"\">\r\n");
      out.write("        <a href=\"");
      if (_jspx_meth_util_005fpropertyMgr_005f1(_jspx_page_context))
        return;
      out.write("\" class=\"grayText\">");
      if (_jspx_meth_bean_005fmessage_005f2(_jspx_page_context))
        return;
      out.write("</a>\r\n");
      out.write("        <img src=\"htdocs/images/icon_pipe_gray.gif\" height=\"15\" width=\"32\" border=\"0\" align=\"middle\" alt=\"\">\r\n");
      out.write("        <a href=\"");
      if (_jspx_meth_util_005fpropertyMgr_005f2(_jspx_page_context))
        return;
      out.write("\" class=\"grayText\">");
      if (_jspx_meth_bean_005fmessage_005f3(_jspx_page_context))
        return;
      out.write("</a>\r\n");
      out.write("        <img src=\"htdocs/images/icon_pipe_gray.gif\" height=\"15\" width=\"32\" border=\"0\" align=\"middle\" alt=\"\">\r\n");
      out.write("        ");
      if (_jspx_meth_html_005flink_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td bgcolor=\"#FFFFFF\" valign=\"middle\" align=\"center\" class=\"grayTextDark\" height=\"21\">\r\n");
      out.write("      ");
      if (_jspx_meth_bean_005fmessage_005f5(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<!-- /footer nav and copyright -->\r\n");
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

  private boolean _jspx_meth_html_005flink_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  html:link
    org.apache.struts.taglib.html.LinkTag _jspx_th_html_005flink_005f0 = (org.apache.struts.taglib.html.LinkTag) _005fjspx_005ftagPool_005fhtml_005flink_0026_005fstyleClass_005faction.get(org.apache.struts.taglib.html.LinkTag.class);
    _jspx_th_html_005flink_005f0.setPageContext(_jspx_page_context);
    _jspx_th_html_005flink_005f0.setParent(null);
    // /tiles/footer.jsp(14,8) name = action type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_html_005flink_005f0.setAction("/92privacyPolicy.do");
    // /tiles/footer.jsp(14,8) name = styleClass type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_html_005flink_005f0.setStyleClass("grayText");
    int _jspx_eval_html_005flink_005f0 = _jspx_th_html_005flink_005f0.doStartTag();
    if (_jspx_eval_html_005flink_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_html_005flink_005f0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_html_005flink_005f0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_html_005flink_005f0.doInitBody();
      }
      do {
        if (_jspx_meth_bean_005fmessage_005f0(_jspx_th_html_005flink_005f0, _jspx_page_context))
          return true;
        int evalDoAfterBody = _jspx_th_html_005flink_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_html_005flink_005f0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.popBody();
      }
    }
    if (_jspx_th_html_005flink_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fhtml_005flink_0026_005fstyleClass_005faction.reuse(_jspx_th_html_005flink_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fhtml_005flink_0026_005fstyleClass_005faction.reuse(_jspx_th_html_005flink_005f0);
    return false;
  }

  private boolean _jspx_meth_bean_005fmessage_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_html_005flink_005f0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  bean:message
    org.apache.struts.taglib.bean.MessageTag _jspx_th_bean_005fmessage_005f0 = (org.apache.struts.taglib.bean.MessageTag) _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.get(org.apache.struts.taglib.bean.MessageTag.class);
    _jspx_th_bean_005fmessage_005f0.setPageContext(_jspx_page_context);
    _jspx_th_bean_005fmessage_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_005flink_005f0);
    // /tiles/footer.jsp(14,70) name = key type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_bean_005fmessage_005f0.setKey("nav.privacy");
    int _jspx_eval_bean_005fmessage_005f0 = _jspx_th_bean_005fmessage_005f0.doStartTag();
    if (_jspx_th_bean_005fmessage_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f0);
    return false;
  }

  private boolean _jspx_meth_util_005fpropertyMgr_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  util:propertyMgr
    com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag _jspx_th_util_005fpropertyMgr_005f0 = (com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag) _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.get(com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag.class);
    _jspx_th_util_005fpropertyMgr_005f0.setPageContext(_jspx_page_context);
    _jspx_th_util_005fpropertyMgr_005f0.setParent(null);
    // /tiles/footer.jsp(16,17) name = key type = null reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_util_005fpropertyMgr_005f0.setKey("Usability.URL");
    int _jspx_eval_util_005fpropertyMgr_005f0 = _jspx_th_util_005fpropertyMgr_005f0.doStartTag();
    if (_jspx_th_util_005fpropertyMgr_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f0);
    return false;
  }

  private boolean _jspx_meth_bean_005fmessage_005f1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  bean:message
    org.apache.struts.taglib.bean.MessageTag _jspx_th_bean_005fmessage_005f1 = (org.apache.struts.taglib.bean.MessageTag) _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.get(org.apache.struts.taglib.bean.MessageTag.class);
    _jspx_th_bean_005fmessage_005f1.setPageContext(_jspx_page_context);
    _jspx_th_bean_005fmessage_005f1.setParent(null);
    // /tiles/footer.jsp(16,76) name = key type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_bean_005fmessage_005f1.setKey("nav.usuability");
    int _jspx_eval_bean_005fmessage_005f1 = _jspx_th_bean_005fmessage_005f1.doStartTag();
    if (_jspx_th_bean_005fmessage_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f1);
    return false;
  }

  private boolean _jspx_meth_util_005fpropertyMgr_005f1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  util:propertyMgr
    com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag _jspx_th_util_005fpropertyMgr_005f1 = (com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag) _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.get(com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag.class);
    _jspx_th_util_005fpropertyMgr_005f1.setPageContext(_jspx_page_context);
    _jspx_th_util_005fpropertyMgr_005f1.setParent(null);
    // /tiles/footer.jsp(18,17) name = key type = null reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_util_005fpropertyMgr_005f1.setKey("AcceptableUse.URL");
    int _jspx_eval_util_005fpropertyMgr_005f1 = _jspx_th_util_005fpropertyMgr_005f1.doStartTag();
    if (_jspx_th_util_005fpropertyMgr_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f1);
    return false;
  }

  private boolean _jspx_meth_bean_005fmessage_005f2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  bean:message
    org.apache.struts.taglib.bean.MessageTag _jspx_th_bean_005fmessage_005f2 = (org.apache.struts.taglib.bean.MessageTag) _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.get(org.apache.struts.taglib.bean.MessageTag.class);
    _jspx_th_bean_005fmessage_005f2.setPageContext(_jspx_page_context);
    _jspx_th_bean_005fmessage_005f2.setParent(null);
    // /tiles/footer.jsp(18,80) name = key type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_bean_005fmessage_005f2.setKey("nav.acceptable");
    int _jspx_eval_bean_005fmessage_005f2 = _jspx_th_bean_005fmessage_005f2.doStartTag();
    if (_jspx_th_bean_005fmessage_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f2);
      return true;
    }
    _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f2);
    return false;
  }

  private boolean _jspx_meth_util_005fpropertyMgr_005f2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  util:propertyMgr
    com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag _jspx_th_util_005fpropertyMgr_005f2 = (com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag) _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.get(com.ibm.gs.houston.jsp.taglib.util.PropertyManagerTag.class);
    _jspx_th_util_005fpropertyMgr_005f2.setPageContext(_jspx_page_context);
    _jspx_th_util_005fpropertyMgr_005f2.setParent(null);
    // /tiles/footer.jsp(20,17) name = key type = null reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_util_005fpropertyMgr_005f2.setKey("ContactUs.URL");
    int _jspx_eval_util_005fpropertyMgr_005f2 = _jspx_th_util_005fpropertyMgr_005f2.doStartTag();
    if (_jspx_th_util_005fpropertyMgr_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f2);
      return true;
    }
    _005fjspx_005ftagPool_005futil_005fpropertyMgr_0026_005fkey_005fnobody.reuse(_jspx_th_util_005fpropertyMgr_005f2);
    return false;
  }

  private boolean _jspx_meth_bean_005fmessage_005f3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  bean:message
    org.apache.struts.taglib.bean.MessageTag _jspx_th_bean_005fmessage_005f3 = (org.apache.struts.taglib.bean.MessageTag) _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.get(org.apache.struts.taglib.bean.MessageTag.class);
    _jspx_th_bean_005fmessage_005f3.setPageContext(_jspx_page_context);
    _jspx_th_bean_005fmessage_005f3.setParent(null);
    // /tiles/footer.jsp(20,76) name = key type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_bean_005fmessage_005f3.setKey("nav.contact");
    int _jspx_eval_bean_005fmessage_005f3 = _jspx_th_bean_005fmessage_005f3.doStartTag();
    if (_jspx_th_bean_005fmessage_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f3);
      return true;
    }
    _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f3);
    return false;
  }

  private boolean _jspx_meth_html_005flink_005f1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  html:link
    org.apache.struts.taglib.html.LinkTag _jspx_th_html_005flink_005f1 = (org.apache.struts.taglib.html.LinkTag) _005fjspx_005ftagPool_005fhtml_005flink_0026_005fstyleClass_005faction.get(org.apache.struts.taglib.html.LinkTag.class);
    _jspx_th_html_005flink_005f1.setPageContext(_jspx_page_context);
    _jspx_th_html_005flink_005f1.setParent(null);
    // /tiles/footer.jsp(22,8) name = action type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_html_005flink_005f1.setAction("/80help.do");
    // /tiles/footer.jsp(22,8) name = styleClass type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_html_005flink_005f1.setStyleClass("grayText");
    int _jspx_eval_html_005flink_005f1 = _jspx_th_html_005flink_005f1.doStartTag();
    if (_jspx_eval_html_005flink_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_html_005flink_005f1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_html_005flink_005f1.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_html_005flink_005f1.doInitBody();
      }
      do {
        if (_jspx_meth_bean_005fmessage_005f4(_jspx_th_html_005flink_005f1, _jspx_page_context))
          return true;
        int evalDoAfterBody = _jspx_th_html_005flink_005f1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_html_005flink_005f1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.popBody();
      }
    }
    if (_jspx_th_html_005flink_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fhtml_005flink_0026_005fstyleClass_005faction.reuse(_jspx_th_html_005flink_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fhtml_005flink_0026_005fstyleClass_005faction.reuse(_jspx_th_html_005flink_005f1);
    return false;
  }

  private boolean _jspx_meth_bean_005fmessage_005f4(javax.servlet.jsp.tagext.JspTag _jspx_th_html_005flink_005f1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  bean:message
    org.apache.struts.taglib.bean.MessageTag _jspx_th_bean_005fmessage_005f4 = (org.apache.struts.taglib.bean.MessageTag) _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.get(org.apache.struts.taglib.bean.MessageTag.class);
    _jspx_th_bean_005fmessage_005f4.setPageContext(_jspx_page_context);
    _jspx_th_bean_005fmessage_005f4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_html_005flink_005f1);
    // /tiles/footer.jsp(22,61) name = key type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_bean_005fmessage_005f4.setKey("nav.help");
    int _jspx_eval_bean_005fmessage_005f4 = _jspx_th_bean_005fmessage_005f4.doStartTag();
    if (_jspx_th_bean_005fmessage_005f4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f4);
      return true;
    }
    _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f4);
    return false;
  }

  private boolean _jspx_meth_bean_005fmessage_005f5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  bean:message
    org.apache.struts.taglib.bean.MessageTag _jspx_th_bean_005fmessage_005f5 = (org.apache.struts.taglib.bean.MessageTag) _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.get(org.apache.struts.taglib.bean.MessageTag.class);
    _jspx_th_bean_005fmessage_005f5.setPageContext(_jspx_page_context);
    _jspx_th_bean_005fmessage_005f5.setParent(null);
    // /tiles/footer.jsp(27,6) name = key type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_bean_005fmessage_005f5.setKey("common.copyright");
    int _jspx_eval_bean_005fmessage_005f5 = _jspx_th_bean_005fmessage_005f5.doStartTag();
    if (_jspx_th_bean_005fmessage_005f5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f5);
      return true;
    }
    _005fjspx_005ftagPool_005fbean_005fmessage_0026_005fkey_005fnobody.reuse(_jspx_th_bean_005fmessage_005f5);
    return false;
  }
}
