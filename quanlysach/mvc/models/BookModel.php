<?php

/**
 * Class BookModel
 */
class BookModel extends DB
{
    const TABLE_NAME = 'books';

    /**
     * @return array
     */
    public function getList()
    {
        $sql = "SELECT * FROM {$this->getTableName()}";
        $result = mysqli_query($this->con, $sql);
        $data = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }

        return $data;
    }

    /**
     * @return string
     */
    public function getTableName()
    {
        return self::TABLE_NAME;
    }

    /**
     * @param $id
     * @return string[]|null
     */
    public function getById($id)
    {
        $sql = "SELECT * FROM {$this->getTableName()} WHERE id = {$id}";
        $result = mysqli_query($this->con, $sql);
        return mysqli_fetch_assoc($result);
    }

    /**
     * @param $id
     * @return bool|mysqli_result
     */
    public function deleteById($id)
    {
        $sql = "DELETE FROM {$this->getTableName()} WHERE id = {$id}";
        return mysqli_query($this->con, $sql);
    }


    public function insert($name, $author, $price, $qty, $public_date, $description, $fileImg)
    {
        $img_name = date('Y_m_d_H_i_s').$fileImg['name'];
        $tmp_name = $fileImg['tmp_name'];
        if (!move_uploaded_file($tmp_name, str_replace('\\', '/', ROOT_PATH).'/uploads/images/'.$img_name)) {
            $img_name = '';
        }
        $sql = "INSERT INTO {$this->getTableName()} (`name`, `price`, `qty`, `description`, `image`, `author`, `public_date`)
                VALUES ('{$name}', {$price}, {$qty}, '{$description}', '{$img_name}', '{$author}', '{$public_date}')";
        mysqli_query($this->con, $sql);
        return mysqli_insert_id($this->con);
    }


    public function update($id, $name, $author, $price, $qty, $public_date, $description, $fileImg)
    {
        $img_name = date('Y_m_d_H_i_s').$fileImg['name'];
        $tmp_name = $fileImg['tmp_name'];
        $description = htmlentities($description);
        $sql = "UPDATE {$this->getTableName()}
                SET `name` = '{$name}', `description` = '{$description}', `price` = {$price}, `qty` = {$qty}, `author` = '{$author}', `public_date` = '{$public_date}'";
        if (move_uploaded_file($tmp_name, str_replace('\\', '/', ROOT_PATH).'/uploads/images/'.$img_name)) {
            $sql .= ", `image` = '{$img_name}'";
        }
        $sql .= "  WHERE id = {$id}";
        return mysqli_query($this->con, $sql);
    }
}