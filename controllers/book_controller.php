<?php 
class book_controller extends controller
{

    public function srch()
    {
        $srch=$_POST['srch'];

        $rows = $this->_model->getSrchRows($srch);
        $this->_setView("indexp");
        $this->_view->set('rows', $rows);
        $this->_view->set('srch', $srch);
        $this->_view->set('title', 'جستجوی  '.'"'.$srch.'"');
        return $this->_view->output();
    }


  public function indexp($cid=0)
  {
        $cid=intval($cid);
        $rows = $this->_model->getRows($cid);

        $cname = '';
        if($cname != 0){
            $cats=$this->_model->getCats();
            $cname = "/" . $cats[ $cid ];
        }


        $this->_setView("indexp");
        $this->_view->set('rows', $rows);
        $this->_view->set('title', 'کتاب ها '  . $cname );
        return $this->_view->output();
  }
  public function index()
  {
	 $rows = $this->_model->getRows();
	 $this->_setView("index");
  	 $this->_view->set('rows', $rows); 
	 $this->_view->set('title', 'کتاب ها ');
	 return $this->_view->output(); 
  }
//.............
   public function delete($sid=0)
   {  
      $id=intval($sid);
	  $this->_model->delete($sid); 
      return $this->index();
   } 
   public function add() 
   { 
      $this->_setView("add");
      $cats = $this->_model->getCats();
      $this->_view->set('cats', $cats);
      $this->_view->set('title', "افزودن کتاب");
	  return $this->_view->output(); 
   } 
   public function edit($sid=0) 
   { 
      $sid = intval($sid);
	  $row = $this->_model->getRowById($sid);
      $this->_setView("edit");

      $cats = $this->_model->getCats();
      $this->_view->set('cats', $cats);

	  $this->_view->set('title', "ویرایش کتاب");
  	  $this->_view->set('row', $row ); 	
	  return $this->_view->output(); 
   } 
 //............
   public function save()
   {
       $id = $_POST['id'];
       $name = $_POST['name'];
       $author = $_POST['author'];
       $pname = $_POST['pname'];
       $pyear = $_POST['pyear'];
       $cid = $_POST['cid'];
       $isbn = $_POST['isbn'];
       $abstract = $_POST['abstract'];
       $logo = $_POST['logo1'];
       $pdf  = $_POST['pdf1'];

       if (file_exists($_FILES['logo']['tmp_name'])){
           $logo = $_FILES['logo']['name'];
           move_uploaded_file($_FILES['logo']['tmp_name'], "uploads/logo/$logo");
       }
       if (file_exists($_FILES['pdf']['tmp_name'])) {
           $pdf = $_FILES['pdf']['name'];
           move_uploaded_file($_FILES['pdf']['tmp_name'], "uploads/pdf/$pdf");
       }
	   if($id==0)
			 $this->_model->insert($name,$author,$pname,$pyear,$cid,$isbn,$abstract,$logo,$pdf  );
	   else	 $this->_model->update($id,$name,$author,$pname,$pyear,$cid,$isbn,$abstract,$logo,$pdf);

	    return $this->index();
     }

     //............
    public function down($id)
    {
        $id=intval($id);
        $book=$this->_model->getRowById($id);
        $pdf = $book['pdf'];
        //header("location:".BASE_URL."/backup/".$file);
        $full_name= "uploads/pdf/".$pdf;
        $quoted = sprintf('"%s"', addcslashes(basename($full_name), '"\\'));
        $size   = filesize($full_name);
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=' . $quoted);
        header('Content-Transfer-Encoding: binary');
        header('Connection: Keep-Alive');
        header('Expires: 0');
        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Pragma: public');
        header('Content-Length: ' . $size);
    }
   
}	 
	 
?>