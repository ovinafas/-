<?php 
class cat_controller extends controller
{ 
  public function index()
  {
	 $rows = $this->_model->getRows();
	 $this->_setView("index");
  	 $this->_view->set('rows', $rows); 
	 $this->_view->set('title', 'دسته ها ');
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

      $this->_view->set('title', "افزودن دسته");
	  return $this->_view->output(); 
   } 
   public function edit($id=0)
   { 
      $sid = intval($id);
	  $row = $this->_model->getRowById($id);
      $this->_setView("edit");

      $cats = $this->_model->getCats($id);
      $this->_view->set('cats', $cats);

	  $this->_view->set('title', "ویرایش دسته");
  	  $this->_view->set('row', $row ); 	
	  return $this->_view->output(); 
   } 
 //............
   public function save() 
    { 
	   $id   =$_POST['id'];
	   $name =$_POST['name'];
	   $pid  =$_POST['pid'];
	   if($id==0)
			 $this->_model->insert($name , $pid );
	   else	 $this->_model->update($id,$name , $pid );					       return $this->index();
     } 
   
}	 
	 
?>