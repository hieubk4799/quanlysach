<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sách
                    <small><?= isset($data['book']['id']) ? 'Cập nhật' : 'Thêm mới'; ?></small>
                </h1>
                <?php require_once "./mvc/views/pages/alert_message.php" ?>

                <form action="?url=book/update"
                      method="POST"
                      enctype="multipart/form-data"
                      style="margin-bottom:1rem;">

                    <input type="hidden" name="id" value="<?= isset($data['book']['id']) ?$data['book']['id'] : ''; ?>" />
                    <div class="form-group">
                        <label for="name">Tên sách: <span class="text-danger">*</span></label>
                        <input type="text"
                               class="form-control"
                               id="name"
                               name="name"
                               value="<?= isset($data['book']['id']) ? $data['book']['name'] : ''; ?>"
                               required
                               maxlength="255">
                    </div>

                    <div class="form-group">
                        <label for="author">Tác giả: <span class="text-danger">*</span></label>
                        <input type="text"
                               class="form-control"
                               id="author"
                               name="author"
                               value="<?= isset($data['book']['id']) ? $data['book']['author'] : ''; ?>"
                               required
                               maxlength="255">
                    </div>

                    <div class="form-group">
                        <label for="public_date">Ngày xuất bản: <span class="text-danger">*</span></label>
                        <input type="date"
                               class="form-control"
                               id="public_date"
                               name="public_date"
                               value="<?= isset($data['book']['id']) ? $data['book']['public_date'] : ''; ?>"
                               required>
                    </div>

                    <div class="form-group">
                        <label for="description">Mô tả: </label>
                        <textarea name="description"
                                  id="description"
                                  rows="6"
                                  class="form-control"><?= isset($data['book']['id']) ?$data['book']['description'] : ''; ?></textarea>
                    </div>

                    <div class="form-group">
                        <label for="price">Giá tiền: <span class="text-danger">*</span></label>
                        <input type="number"
                               class="form-control"
                               id="price"
                               name="price"
                               value="<?= isset($data['book']['id']) ? $data['book']['price'] : ''; ?>"
                               min = 1
                               required
                               >
                    </div>

                    <div class="form-group">
                        <label for="qty">Số lượng: <span class="text-danger">*</span></label>
                        <input type="number"
                               class="form-control"
                               id="qty"
                               name="qty"
                               value="<?= isset($data['book']['id']) ? $data['book']['qty'] : ''; ?>"
                               min = 1
                               required
                               >
                    </div>

                    <?php if (!isset($data['book']['id'])): ?>
                        <div class="form-group">
                            <label for="image">Hình ảnh: <span class="text-danger">*</span></label>
                            <div class="custom-file">
                                <input type="file" id="image" name="image" accept=".png,.gif,.jpg,.jpeg" required>
                            </div>
                        </div>
                        <div class="image-preview mb-4" id="imagePreview">
                            <img src="" alt="Image Preview" class="image-preview__image" />
                            <span class="image-preview__default-text">Hình ảnh</span>
                        </div>
                    <?php else: ?>
                        <div class="form-group">
                            <label for="image">Hình ảnh:</label>
                            <div class="custom-file">
                                <input type="file" id="image" name="image" accept=".png,.gif,.jpg,.jpeg">
                            </div>
                        </div>
                        <div class="image-preview mb-4" id="imagePreview">
                            <img src="./uploads/images/<?= $data['book']['image'] ?>" alt="Image Preview" class="image-preview__image" style="display:block;" />
                            <span class="image-preview__default-text" style="display:none;">Hình ảnh</span>
                        </div>
                    <?php endif; ?>
                    
                    <br>
                    <button type="submit" class="btn btn-primary">
                        <?= isset($data['book']['id']) ? 'Cập nhật' : 'Thêm mới'; ?>
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
