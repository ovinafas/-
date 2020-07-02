<?php
class user_model extends model
{
	public function getRows()
	{
	    $sql="SELECT * FROM tbl_user " ;
		$rows = $this->getAll($sql);
		return $rows ; 
	} 
//.................	
	public function getRowById($id)
	{ 
		$sql = "SELECT * FROM tbl_user WHERE  id =$id";
		$row = $this->getRow($sql); 
		return $row; 
	} 
//.................


   public  function getRowByUp($u ,$p)
   {

       $sql = "SELECT * FROM  tbl_user WHERE uname ='$u' and upass ='$p' ";
       $row = $this->getRow($sql);
       return $row;
   }

//.................
	public function delete($id)
	{
       $sql="DELETE FROM tbl_user WHERE id=$id";
	   $this->execQuery($sql);
	}	
//.................
	public function insert($name,$uname,$upass,$utype)
	{
      $sql="INSERT INTO tbl_user(name,uname,upass,utype)
	                  VALUES('$name','$uname','$upass','$utype')";
	  return $this->insQuery($sql);
	}
//.................
	public function update($id,$name,$uname,$utype)
	{
       $sql="UPDATE tbl_user SET name='$name'
	                            ,uname='$uname' 
	                            ,utype='$utype'
	                             WHERE id=$id";
	   $this->execQuery($sql);
	}
//.................
    public function updatePass($id,$upass)
    {
        $sql="UPDATE tbl_user SET upass='$upass'
	                             WHERE id=$id";
        $this->execQuery($sql);
    }
	

}
?>