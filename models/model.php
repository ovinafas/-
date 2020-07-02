<?php
class model 
{ 
    protected $conn; 
	public function __construct() 
	{ 
		$this->conn = new mysqli(DB_HOST , DB_USER , DB_PASS ,DB_NAME);
		$this->conn->query("SET NAMES ".DB_COLL);
	}
	public function execQuery($sql)
	{
	    $res = $this->conn->query($sql);
		return $res;
	}
    public function insQuery($sql)
    {
        $res = $this->conn->query($sql);
        $id = $this->conn->insert_id;
        return $id;
    }
	public function getAll($sql) 
	{
        $res = $this->conn->query($sql);
        $rows=array();
		while ( $row=$res->fetch_assoc() )
		     $rows[]=$row;
		return $rows;	 
	}
    public function getList($sql)
    {
        $res = $this->conn->query($sql);
        $rows=array();
        while ( $row=$res->fetch_assoc() )
            $rows[$row['id']]=$row['name'];
        return $rows;
    }
    public function getRow($sql)
	{
        $res = $this->conn->query($sql);
        $row=$res->fetch_assoc() ;
		return $row;
	}
	public  function getCats($id='')
    {
        $sql="SELECT * FROM tbl_cat";
        if($id!='') $sql .=" WHERE id<>$id and pid<>$id ";
        return $this->getList($sql);
    }
}
?>