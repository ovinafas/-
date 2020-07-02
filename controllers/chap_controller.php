<?php 
class chap_controller extends controller
{
    public function show($id=0)
    {
        $id = intval($id);
        $row = $this->_model->getRowById($id);
        $this->_setView("show");

        $bid= $row['bid'];
        $book =$this->_model->getBook( $bid);
        $this->_view->set('book', $book);

        $chaps=$this->_model->getRows($bid);

        $this->_view->set('bname', $book['name'] );
        $this->_view->set('chaps', $chaps );

        $this->_view->set('title', $row['name'] );
        $this->_view->set('row', $row );
        return $this->_view->output();
    }
    public function indexp($bid='')
    {
        $bid=intval($bid);
        $rows = $this->_model->getRows($bid);
        $book =$this->_model->getBook( $bid);

        $this->_setView("indexp");
        $this->_view->set('book', $book);
        $this->_view->set('rows', $rows);
        $this->_view->set('title', 'فصل های کتاب  ' . $book['name'] );
        return $this->_view->output();
    }
  public function index($bid='')
  {
     $bid=intval($bid);
	 $rows = $this->_model->getRows($bid);
	 $book =$this->_model->getBook( $bid);

	 $this->_setView("index");
      $this->_view->set('book', $book);
      $this->_view->set('rows', $rows);
      $this->_view->set('title', 'فصل های کتاب  ' . $book['name'] );
	 return $this->_view->output(); 
  }
//.............
   public function delete($id=0)
   {  
      $id=intval($id);
	  $this->_model->delete($id);
      return $this->index();
   } 
   public function add($bid='')
   { 
      $this->_setView("add");

      $book =$this->_model->getBook( $bid);
      $this->_view->set('book', $book);
      $this->_view->set('title', "افزودن فصل");
	  return $this->_view->output(); 
   } 
   public function edit($id=0)
   { 
      $id = intval($id);
	  $row = $this->_model->getRowById($id);
      $this->_setView("edit");

      $bid= $row['bid'];
       $book =$this->_model->getBook( $bid);
       $this->_view->set('book', $book);

	  $this->_view->set('title', "ویرایش فصل");
  	  $this->_view->set('row', $row ); 	
	  return $this->_view->output(); 
   } 
 //............
   public function save()
   {
       $id   = $_POST['id'];
       $name = $_POST['name'];
       $bid  = $_POST['bid'];
       $body = $_POST['body'];
       $pdf  = $_POST['pdf1'];

       if (file_exists($_FILES['pdf']['tmp_name'])) {
           $pdf = $_FILES['pdf']['name'];
           move_uploaded_file($_FILES['pdf']['tmp_name'], "uploads/cpdf/$pdf");
       }
	   if($id==0)
			 $this->_model->insert($name,$bid,$body,$pdf  );
	   else	 $this->_model->update($id,$name,$bid,$body,$pdf);

	    return $this->index($bid);
     } 
   //..............
    //............
    public function down($id)
    {
        $id=intval($id);
        $book=$this->_model->getRowById($id);
        $pdf = $book['pdf'];
        //header("location:".BASE_URL."/backup/".$file);
        $full_name= "uploads/cpdf/".$pdf;
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