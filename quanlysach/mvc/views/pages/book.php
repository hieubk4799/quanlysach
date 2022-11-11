<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sách
                    <small>Danh sách</small>
                </h1>
                <?php require_once "./mvc/views/pages/alert_message.php" ?>
            </div>

            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Ảnh</th>
                    <th>Tên sách</th>
                    <th>Tác giả</th>
                    <th>Ngày xuất bản</th>
                    <th>Giá tiền</th>
                    <th>Số lượng</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <?php $count = 1; foreach ($data['books'] as $book): ?>
                    <tr>
                        <td><?= $count ?></td>
                        <td><img src="./uploads/images/<?= $book['image'] ?>" width="60" ></td>
                        <td><?= $book['name'] ?></td>
                        <td><?= $book['author'] ?></td>
                        <td><?= date('d/m/Y', strtotime($book['public_date'])) ?></td>
                        <td><?= number_format($book['price'],-3,',',',') ?> VND</td>
                        <td><?= $book['qty'] ?></td>
                        <td>
                            <a href="?url=book/delete/<?= $book['id']; ?>"
                               onclick="return confirm('Bạn chắc chắn muốn xóa item này không?');">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </a>
                            <a href="?url=book/edit/<?= $book['id']; ?>" style="margin:0 1rem;">
                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                            </a>
                        </td>
                    </tr>
                    <?php $count++ ?>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>