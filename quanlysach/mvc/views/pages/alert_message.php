<?php if (!empty($_SESSION['success'])): ?>
    <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Success!</strong> <?= $_SESSION['success']; ?>
    </div>
<?php endif; ?>
<?php if (!empty($_SESSION['error'])): ?>
    <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Error!</strong> <?= $_SESSION['error']; ?>
    </div>
<?php endif; ?>