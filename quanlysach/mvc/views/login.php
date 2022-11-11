<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./public/css/style.css" media="all" />
</head>
<body style="background: #007bff;
    background: linear-gradient(to right, #0062E6, #33AEFF);">
    <div class="container">
      <?php require_once "./mvc/views/pages/alert_message.php" ?>
        <div class="row">
          <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
              <div class="card-body">
                <h5 class="card-title text-center">Đăng nhập</h5>
                <form class="form-signin" action="?url=auth/login" method="POST" enctype="multipart/form-data">
                  
                  <div class="form-label-group">
                    <input type="email" id="inputEmail" class="form-control" placeholder="Email" name="email" autofocus required>
                    <label for="inputEmail">Email</label>
                  </div>
    
                  <div class="form-label-group">
                    <input type="password" id="inputPassword" class="form-control" placeholder="Mật khẩu" name="password" required>
                    <label for="inputPassword">Mật khẩu</label>
                  </div>
                  <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Đăng nhập</button>
                </form>
              </div>
            </div>
          </div>
        </div>
    </div>
</body>
</html>