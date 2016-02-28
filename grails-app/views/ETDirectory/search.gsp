
<%@ page import="ACE.ETDirectory" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <meta name="layout" content="starter">
    <g:set var="entityName" value="${message(code: 'ETDirectory.label', default: 'ETDirectory')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
    <link href="${request.contextPath}/starter/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="${request.contextPath}/starter/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. We have chosen the skin-green for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
    <link href="${request.contextPath}/starter/dist/css/skins/skin-green.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="${request.contextPath}/starter/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="${request.contextPath}/starter/plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="${request.contextPath}/starter/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="${request.contextPath}/starter/plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="${request.contextPath}/starter/plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="${request.contextPath}/starter/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- DATA TABLES -->
    <link href="${request.contextPath}/starter/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
<a href="#list-ETDirectory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-ETDirectory" class="content scaffold-list" role="starter">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

<!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
             <div class="box-header">
                 <h3 class="box-title">Data Table With Full Features</h3>
            </div><!-- /.box-header -->
         <div class="box-body">
            <table id="example1" class="table table-bordered table-striped">
                    <thead>
                    <tr>

                        <g:sortableColumn property="contactName" title="${message(code: 'ETDirectory.contactName.label', default: 'Contact Name')}" />

                        <g:sortableColumn property="position" title="${message(code: 'ETDirectory.position.label', default: 'Position')}" />

                        <g:sortableColumn property="phoneNumber" title="${message(code: 'ETDirectory.phoneNumber.label', default: 'Phone Number')}" />

                        <g:sortableColumn property="extension" title="${message(code: 'ETDirectory.extension.label', default: 'Extension')}" />

                        <g:sortableColumn property="email" title="${message(code: 'ETDirectory.email.label', default: 'Email')}" />

                        <g:sortableColumn property="remark" title="${message(code: 'ETDirectory.remark.label', default: 'Remark')}" />

                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${ETDirectoryInstanceList}" status="i" var="ETDirectoryInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show" id="${ETDirectoryInstance.id}">${fieldValue(bean: ETDirectoryInstance, field: "contactName")}</g:link></td>

                            <td>${fieldValue(bean: ETDirectoryInstance, field: "position")}</td>

                            <td>${fieldValue(bean: ETDirectoryInstance, field: "phoneNumber")}</td>

                            <td>${fieldValue(bean: ETDirectoryInstance, field: "extension")}</td>

                            <td>${fieldValue(bean: ETDirectoryInstance, field: "email")}</td>

                            <td>${fieldValue(bean: ETDirectoryInstance, field: "remark")}</td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
            <div class="pagination">
              <g:paginate total="${ETDirectoryInstanceCount ?: 0}" />
            </div>
       </div><!-- /.body -->
    </div><!-- /.box -->
   </div><!-- /.col -->
 </div><!-- /.row -->
 </section><!-- /.content -->
</div><!-- /.content -->


<!-- jQuery 2.1.4 -->
<script src="${request.contextPath}/starter/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.2 JS -->
<script src="${request.contextPath}/starter/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- Morris.js charts -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="${request.contextPath}/starter/plugins/morris/morris.min.js" type="text/javascript"></script>
<!-- Sparkline -->
<script src="${request.contextPath}/starter/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- jvectormap -->
<script src="${request.contextPath}/starter/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/starter/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
<!-- jQuery Knob Chart -->
<script src="${request.contextPath}/starter/plugins/knob/jquery.knob.js" type="text/javascript"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/starter/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
<!-- datepicker -->
<script src="${request.contextPath}/starter/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${request.contextPath}/starter/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="${request.contextPath}/starter/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="${request.contextPath}/starter/dist/js/app.min.js" type="text/javascript"></script>
<!-- Slimscroll -->
<script src="${request.contextPath}/starter/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- FastClick -->
<script src='${request.contextPath}/starter/plugins/fastclick/fastclick.min.js'></script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
          Both of these plugins are recommended to enhance the
          user experience. Slimscroll is required when using the
          fixed layout. -->
<!-- DATA TABES SCRIPT -->
<script src="${request.contextPath}/starter/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/starter/plugins/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $("#example1").dataTable();
        $('#example2').dataTable({
            "bPaginate": true,
            "bLengthChange": false,
            "bFilter": false,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false
        });
    });
</script>

</body>
</html>
