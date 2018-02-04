<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<html lang="en-us">
<head>
  <meta charset="utf-8">
  <title>Lightbox Example</title>
  <link href="<c:url value="/resources/popup/css/lightbox.min.css"/>" rel="stylesheet">
</head>
<body>

  <section>
    <h3>Two Individual Images</h3>
    <div>
      <a class="example-image-link" href="http://lokeshdhakar.com/projects/lightbox2/images/image-1.jpg" data-lightbox="example-1"><img class="example-image" src="http://lokeshdhakar.com/projects/lightbox2/images/thumb-1.jpg" alt="image-1" /></a>
    </div>

    <hr />
  </section>

  
  <script src="<c:url value="/resources/popup/js/lightbox-plus-jquery.min.js"/>"></script>	

</body>
</html>
