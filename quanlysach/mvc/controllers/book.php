<?php

/**
 * Class Book
 */
class Book extends Controller
{
    /**
     * @inheritDoc
     */
    public function execute()
    {
        $this->view('index',
            [
                'page'          => 'book',
                'title'         => 'Quản lý sách',
                'books'      => $this->getListBook()
            ]
        );
    }

    /**
     * @param null $id
     */
    public function edit($id = null)
    {
        $data = [];
        if ($id) {
            $data = $this->getById($id);
        }

        $this->view('index',
            [
                'page'          => 'book_edit',
                'title'         => 'Tạo mới sách',
                'book'       => $data
            ]
        );
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getById($id)
    {
        $model = $this->model('BookModel');
        return $model->getById($id);
    }

    /**
     * @return mixed
     */
    public function update()
    {
        $id          = $_POST['id'] ?: null;
        $name        = $_POST['name'] ?: '';
        $author      = $_POST['author'] ?: '';
        $price       = $_POST['price'] ?: '';
        $qty         = $_POST['qty'] ?: '';
        $public_date = $_POST['public_date'] ?: '';
        $description = $_POST['description'] ?: '';
        $fileImg     = $_FILES['image'];

        try {
            $model = $this->model('BookModel');
            if ($id) {
                $info = $model->update($id, $name, $author, $price, $qty, $public_date, $description, $fileImg);
                if ($info) {
                    $this->addSuccessMessage('Cập nhật sách thành công.');
                } else {
                    $this->addErrorMessage('Đã có lỗi xảy ra khi cập nhật thông tin sách.');
                }
            } else {
                $hh = $model->insert($name, $author, $price, $qty, $public_date, $description, $fileImg);
                if ($hh) {
                    $this->addSuccessMessage('Tạo mới sách thành công.');
                } else {
                    $this->addErrorMessage('Đã có lỗi xảy ra khi tạo mới thông tin sách.');
                }
            }
        } catch (\Exception $exception) {
            $this->addErrorMessage($exception->getMessage());
        }

        return $this->redirect('?url=book');
    }

    /**
     * @param null $id
     * @return mixed
     */
    public function delete($id = null)
    {
        if (!$id) {
            $this->addErrorMessage('Trang không tồn tại.');
            return $this->redirect('?url=book');
        }

        try {
            $model = $this->model('BookModel');
            $model->deleteById($id);
            $this->addSuccessMessage('Xóa sách thành công.');
        } catch (\Exception $e) {
            $this->addErrorMessage($e->getMessage());
        }

        return $this->redirect('?url=book');
    }

    public function getListBook()
    {
        $model = $this->model('BookModel');
        return $model->getList();
    }
}