<?php
class chap_model extends model
{
	public function getRows($bid='')
	{
	    $sql="SELECT * FROM tbl_chap " ;
	    if ( $bid!='') $sql .=" WHERE bid=$bid ";
		$rows = $this->getAll($sql);
		return $rows ; 
	} 
//.................	
	public function getRowById($id)
	{ 
		$sql = "SELECT * FROM tbl_chap WHERE  id =$id";
		$row = $this->getRow($sql); 
		return $row; 
	}
//.................
    public function getBook($bid)
    {
        $sql = "SELECT * FROM tbl_book WHERE  id =$bid";
        $row = $this->getRow($sql);
        return $row;
    }
//.................	
	public function delete($id)
	{
       $sql="DELETE FROM tbl_chap WHERE id=$id";
	   $this->execQuery($sql);
	}	
//.................
	public function insert($name,$bid,$body,$pdf)
	{
      $sql="INSERT INTO tbl_chap(name,bid,body,pdf)
	                  VALUES('$name','$bid','$body','$pdf')";
	  return $this->insQuery($sql);
	}
//.................
	public function update($id,$name,$bid,$body,$pdf)
	{
       $sql="UPDATE tbl_chap SET name='$name'
	                            ,bid='$bid' 
	                            ,body='$body' 
	                            ,pdf='$pdf' 
	                            WHERE id=$id";
	   $this->execQuery($sql);
	}

	

}
?>