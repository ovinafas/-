<?php
class book_model extends model
{

    public function getSrchRows($srch='')
    {
        $sql="SELECT C.name as cname,B.* FROM tbl_book as B,tbl_cat as C 
              WHERE C.id=B.cid and (B.name like '%$srch%' or
                                    B.abstract like '%$srch%' or B.id in 
                                     ( select bid from tbl_chap where 
                                           name like '%$srch%' or body like '%$srch%' ))   " ;
        $rows = $this->getAll($sql);
        return $rows ;
    }



	public function getRows($cid='')
	{
	    $sql="SELECT C.name as cname,B.* FROM tbl_book as B,tbl_cat as C 
              WHERE C.id=B.cid   " ;
	    if ( $cid!='') $sql .=" AND cid=$cid ";
		$rows = $this->getAll($sql);
		return $rows ; 
	} 
//.................	
	public function getRowById($id)
	{ 
		$sql = "SELECT * FROM tbl_book WHERE  id =$id";
		$row = $this->getRow($sql); 
		return $row; 
	} 
//.................	
	public function delete($id)
	{
       $sql="DELETE FROM tbl_book WHERE id=$id";
	   $this->execQuery($sql);
	}	
//.................
	public function insert($name,$author,$pname,$pyear,$cid,$isbn,$abstract,$logo,$pdf)
	{
      $sql="INSERT INTO tbl_book(name,author,pname,pyear,cid,isbn,abstract,logo,pdf)
	                  VALUES('$name','$author','$pname','$pyear','$cid'
	                  ,'$isbn','$abstract','$logo','$pdf')";
	  return $this->insQuery($sql);
	}
//.................
	public function update($id,$name,$author,$pname,$pyear,$cid,$isbn,$abstract,$logo,$pdf)
	{
       $sql="UPDATE tbl_book SET name='$name'
                                ,author='$author'
	                            ,pname='$pname' 
	                            ,pyear='$pyear' 
	                            ,cid='$cid'
	                            ,isbn= '$isbn' 
	                            ,abstract = '$abstract'
	                            ,logo = '$logo'
	                            ,pdf = '$pdf'
	                            WHERE id=$id";
	   $this->execQuery($sql);
	}

	

}
?>