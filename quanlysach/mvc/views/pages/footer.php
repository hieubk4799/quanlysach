</div>
<!-- /#wrapper -->

<!--Xóa message nếu load lại trang-->
<?php unset($_SESSION['success']); ?>
<?php unset($_SESSION['error']); ?>

<script>
    // Xóa message sau 1 giây
    setTimeout(function() {
        let alert = document.querySelector(".alert");
        alert.remove();
    }, 1000);

</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/metisMenu/1.1.3/metisMenu.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="./public/js/main.js"></script>
</body>
</html>
