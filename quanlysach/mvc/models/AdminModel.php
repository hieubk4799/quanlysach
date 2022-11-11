<?php

/**
 * Class AdminModel
 */
class AdminModel extends DB
{
    const TABLE_NAME = 'admins';

    /**
     * @return string
     */
    public function getTableName()
    {
        return self::TABLE_NAME;
    }


    /**
     * @param $email
     * @param $password
     * @return string[]
     */
    public function check($email,$password)
    {
        $sql = "SELECT * FROM {$this->getTableName()}";
        $result = mysqli_query($this->con, $sql);
        if(mysqli_num_rows($result) > 0){
            while($row = mysqli_fetch_assoc($result)){
                if ($row['email'] == $email && md5($password) === $row['password']) {
                    return true;
                }
            }
        }
        return false;
    }
}