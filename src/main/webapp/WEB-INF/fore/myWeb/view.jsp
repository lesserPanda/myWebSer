<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>view-lesserPanda个人博客</title>
<meta name="keywords" content="黑色模板,个人网站模板,个人博客模板,博客模板,css3,html5,网站模板" />
<meta name="description" content="这是一个有关黑色时间轴的css3 html5 网站模板" />
<jsp:include page="/WEB-INF/fore/commons/head.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/fore/commons/show_message.jsp"/>
<!--header end-->
<div id="mainbody">
  <div class="blogs">
    <div id="index_view">
      <h2 class="t_nav"><a href="/">网站首页</a><a href="/">慢生活</a></h2>
      <h1 class="c_titile">${bean.title }</h1>
      <p class="box">发布时间：<fmt:formatDate  value="${bean.createDate }" type="both" pattern="yyyy-MM-dd" />&nbsp;&nbsp;<span>编辑：${bean.createBy }</span>&nbsp;&nbsp;阅读：（${bean.hits }）<c:if test="${bean.zzFlag == 0031 }">伤不起：${bean.vulnerableNum }</c:if><c:if test="${bean.zzFlag == 0032 }">喜欢：${bean.likeNum }</c:if><c:if test="${bean.interestedNum }">感兴趣：</c:if></p>
      <ul>
        ${bean.content }
      </ul>
      <div class="share"> 
        <!-- Baidu Button BEGIN -->
        <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare"> <span class="bds_more">分享到：</span> <a class="bds_qzone"></a> <a class="bds_tsina"></a> <a class="bds_tqq"></a> <a class="bds_renren"></a> <a class="bds_t163"></a> <a class="shareCount"></a> </div>
        <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585" ></script> 
        <script type="text/javascript" id="bdshell_js"></script> 
        <script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script> 
        <!-- Baidu Button END --> 
      </div>
      <div class="otherlink">
        <h2>评论区</h2>
        <iframe src="/index/toMusic" style="width:315px;height:250px"  frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
        <!-- <ul>
          <li><a href="/newstalk/mood/2013-07-24/518.html" title="我希望我的爱情是这样的">我希望我的爱情是这样的有种情谊，不是爱情，也算不得友情有种情谊，不是爱情，也算不得友情</a></li>
          <li><a href="/newstalk/mood/2013-07-02/335.html" title="有种情谊，不是爱情，也算不得友情">有种情谊，不是爱情，也算不得友情有种情谊，不是爱情，也算不得友情有种情谊，不是爱情，也算不得友情</a></li>
          <li><a href="/newstalk/mood/2013-07-01/329.html" title="世上最美好的爱情">世上最美好的爱情</a></li>
          <li><a href="/news/read/2013-06-11/213.html" title="爱情没有永远，地老天荒也走不完">爱情没有永远，地老天荒也走不完</a></li>
          <li><a href="/news/s/2013-06-06/24.html" title="爱情的背叛者">爱情的背叛者</a></li>
        </ul> -->
      </div>
    </div>
    <!--bloglist end-->
    <%-- <aside>
      <div class="search">
        <form class="searchform" method="get" action="#">
          <input type="text" name="s" value="Search" onfocus="this.value=''" onblur="this.value='Search'">
        </form>
      </div>
      <div class="sunnav">
        <ul>
          <li><a href="/web/" target="_blank" title="网站建设">网站建设</a></li>
          <li><a href="/newshtml5/" target="_blank" title="HTML5 / CSS3">HTML5 / CSS3</a></li>
          <li><a href="/jstt/" target="_blank" title="技术探讨">技术探讨</a></li>
          <li><a href="/news/s/" target="_blank" title="慢生活">慢生活</a></li>
        </ul>
      </div>
      <div class="tuijian">
        <h2>栏目更新</h2>
        <ol>
          <li><span><strong>1</strong></span><a href="/">有一种思念，是淡淡的幸福,一个心情一行文字</a></li>
          <li><span><strong>2</strong></span><a href="/">励志人生-要做一个潇洒的女人</a></li>
          <li><span><strong>3</strong></span><a href="/">女孩都有浪漫的小情怀——浪漫的求婚词</a></li>
          <li><span><strong>4</strong></span><a href="/">Green绿色小清新的夏天-个人博客模板</a></li>
          <li><span><strong>5</strong></span><a href="/">女生清新个人博客网站模板</a></li>
          <li><span><strong>6</strong></span><a href="/">Wedding-婚礼主题、情人节网站模板</a></li>
          <li><span><strong>7</strong></span><a href="/">Column 三栏布局 个人网站模板</a></li>
          <li><span><strong>8</strong></span><a href="/">时间煮雨-个人网站模板</a></li>
          <li><span><strong>9</strong></span><a href="/">花气袭人是酒香—个人网站模板</a></li>
        </ol>
      </div>
      <div class="toppic">
        <h2>图文并茂</h2>
        <ul>
          <li><a href="/"><img src="/fore/images/k01.jpg">腐女不可怕，就怕腐女会画画！
            <p>伤不起</p>
            </a></li>
          <li><a href="/"><img src="/fore/images/k02.jpg">问前任，你还爱我吗？无限戳中泪点~
            <p>感兴趣</p>
            </a></li>
          <li><a href="/"><img src="/fore/images/k03.jpg">世上所谓幸福，就是一个笨蛋遇到一个傻瓜。
            <p>喜欢</p>
            </a></li>
        </ul>
      </div>
      <div class="clicks">
        <h2>热门点击</h2>
        <ol>
          <li><span><a href="/">慢生活</a></span><a href="/">有一种思念，是淡淡的幸福,一个心情一行文字</a></li>
          <li><span><a href="/">爱情美文</a></span><a href="/">励志人生-要做一个潇洒的女人</a></li>
          <li><span><a href="/">慢生活</a></span><a href="/">女孩都有浪漫的小情怀——浪漫的求婚词</a></li>
          <li><span><a href="/">博客模板</a></span><a href="/">Green绿色小清新的夏天-个人博客模板</a></li>
          <li><span><a href="/">女生个人博客</a></span><a href="/">女生清新个人博客网站模板</a></li>
          <li><span><a href="/">Wedding</a></span><a href="/">Wedding-婚礼主题、情人节网站模板</a></li>
          <li><span><a href="/">三栏布局</a></span><a href="/">Column 三栏布局 个人网站模板</a></li>
          <li><span><a href="/">个人网站模板</a></span><a href="/">时间煮雨-个人网站模板</a></li>
          <li><span><a href="/">古典风格</a></span><a href="/">花气袭人是酒香—个人网站模板</a></li>
        </ol>
      </div>
    </aside> --%>
    <iframe src="/index/toRightModel" style="width:335px;height:1250px;margin:0px 0px 0px 5px;"  frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
  </div>
  <!--blogs end--> 
</div>
<!--mainbody end-->
<jsp:include page="/WEB-INF/fore/commons/foot.jsp"/>
<!-- jQuery仿腾讯回顶部和建议 代码开始 -->
<div id="tbox"> <a id="togbook" href="/e/tool/gbook/?bid=1"></a> <a id="gotop" href="javascript:void(0)"></a> </div>
<!-- 代码结束 -->
</body>
</html>