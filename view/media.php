<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="http://getbootstrap.com/favicon.ico">

  <title>Absensi Siswa</title>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/jszip-2.5.0/dt-1.12.1/b-2.2.3/b-html5-2.2.3/b-print-2.2.3/r-2.3.0/sc-2.0.7/datatables.min.css" />

  <link href="./lib/bootstrap.min.css" rel="stylesheet">
  <link href="./lib/ie10-viewport-bug-workaround.css" rel="stylesheet">

  <link href="./lib/dashboard.css" rel="stylesheet">
  <script src="./lib/ie-emulation-modes-warning.js"></script>

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <script type="text/javascript">
    window.setTimeout("waktu()", 1000);

    function waktu() {
      var tanggal = new Date();
      setTimeout("waktu()", 1000);
      document.getElementById("output").innerHTML = tanggal.getHours() + ":" + tanggal.getMinutes() + " WIB";
    }
    window.setTimeout("waktu_m()", 1000);

    function waktu_m() {
      var tanggal = new Date();
      setTimeout("waktu_m()", 1000);
      document.getElementById("output_m").innerHTML = tanggal.getHours() + ":" + tanggal.getMinutes() + " WIB";
    }
  </script>
</head>

<body>

  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <?php
      include './model/layout/navbar.php';
      ?>
    </div>
  </nav>

  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-3 col-md-2 sidebar">
        <?php
        include './model/layout/sidebar.php';
        ?>
      </div>
      <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        <?php
        include './model/layout/content.php';
        ?>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="./lib/jquery.min.js"></script>
  <script>
    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
  </script>
  <script src="./lib/bootstrap.min.js"></script>
  <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
  <script src="./lib/holder.min.js"></script>
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <script src="./lib/ie10-viewport-bug-workaround.js"></script>

  <script type="text/javascript" src="https://cdn.datatables.net/v/bs5/jszip-2.5.0/dt-1.12.1/b-2.2.3/b-html5-2.2.3/b-print-2.2.3/r-2.3.0/sc-2.0.7/datatables.min.js">
  </script>
  <script src="https://cdn.datatables.net/plug-ins/1.12.1/api/sum().js"></script>

  <script>
    $(document).ready(function() {
      $('#datatables').DataTable({
        responsive: true,
        dom: "Bfrtip",
        buttons: [{
            extend: "copy",
            className: "btn-sm"
          },
          {
            extend: "csv",
            className: "btn-sm"
          },
          {
            extend: "excel",
            className: "btn-sm"
          },
          {
            extend: "pdf",
            className: "btn-sm"
          },
          {
            extend: "print",
            className: "btn-sm"
          },
        ],
      });
    });
  </script>

</body>

</html>