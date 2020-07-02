<?php
class cat_model extends model
{
	public function getRows($pid='')
	{
	    $sql="SELECT * FROM tbl_cat " ;
	    if ( $pid!='') $sql .=" WHERE pid=$pid ";
		$rows = $this->getAll($sql);
		return $rows ; 
	} 
//.................	
	public function getRowById($id)
	{ 
		$sql = "SELECT * FROM tbl_cat WHERE  id =$id";
		$row = $this->getRow($sql); 
		return $row; 
	} 
//.................	
	public function delete($id)
	{
       $sql="DELETE FROM tbl_cat WHERE id=$id";
	   $this->execQuery($sql);
	}	
//.................
	public function insert($name,$pid)
	{
      $sql="INSERT INTO tbl_cat(name,pid)
	                  VALUES('$name',$pid)";
	  return $this->insQuery($sql);
	}
//.................
	public function update($id,$name,$pid)
	{
       $sql="UPDATE tbl_cat SET name='$name'
	                           ,pid='$pid' 
	                            WHERE id=$id";
	   $this->execQuery($sql);
	}

	

}
?>