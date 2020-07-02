<?php 
class user_controller extends controller
{ 
  public function index()
  {
 	 $rows = $this->_model->getRows();

	 $this->_setView("index");
     $this->_view->set('rows', $rows);
     $this->_view->set('title', 'لیست کاربران  '  );
	 return $this->_view->output(); 
  }
//.............
   public function delete($id=0)
   {  
      $id=intval($id);
	  $this->_model->delete($id);
      return $this->index();
   } 
   public function add()
   { 
      $this->_setView("add");
      $this->_view->set('title', "افزودن کاربر");
	  return $this->_view->output(); 
   } 
   public function edit($id=0)
   { 
      $id = intval($id);
	  $row = $this->_model->getRowById($id);
      $this->_setView("edit");

	  $this->_view->set('title', "ویرایش کاربر");
  	  $this->_view->set('row', $row ); 	
	  return $this->_view->output(); 
   }
    public function editp($id=0)
    {
        $id = intval($id);
        $row = $this->_model->getRowById($id);
        $this->_setView("editp");

        $this->_view->set('title', "تغییر کلمه عبور ");
        $this->_view->set('row', $row );
        return $this->_view->output();
    }
    //............
   public function save()
   {
       $id   = $_POST['id'];
       $utype  = $_POST['utype'];
       $name = $_POST['name'];
       $uname  = $_POST['uname'];
       $sw=true;
       if($id==0) {
           $upass = $_POST['upass'];
           $upass2 = $_POST['upass2'];
           if ( $upass!=$upass2) $sw=false;
       }
       if( $uname=='' ) {
           $sw=false;
       }

       if($sw) {
           if ($id == 0)
                    $this->_model->insert($name,$uname,$upass,$utype);
           else     $this->_model->update($id,$name,$uname,$utype);

           $_SESSION['fb'] = "  تغیرات با موفقیت انجام شد ";
       } else
           $_SESSION['er'] = "   نام کاربری تغین نشده یا کلمه عبور و پسورد مساوی نیست  ";

       if($id == $_SESSION['user_id'])
       {
           return  $this->profile();
       }
       else   return $this->index();
     }

    public function savep()
    {
        $id   = $_POST['id'];
        $upass = $_POST['upass'];
        $upass2 = $_POST['upass2'];
        if ( $upass==$upass2) {
            $this->_model->updatePass($id, $upass);
            $_SESSION['fb'] = "  تغیرات با موفقیت انجام شد ";

        }else {

            $_SESSION['er'] = " کلمه عبور و تکرار ان مساوی نیست  ";
        }

        if($id == $_SESSION['user_id'])
        {
            return  $this->mypass();
        }
        else   return $this->index();
    }



    public  function login()
    {
        $this->_setView('login');
        $this->_view->set('title',"ورود کاربر ");
        return  $this->_view->output();


    }

    public function check()
    {
       $uname = $_POST['uname'];
       $upass = $_POST['upass'];

       $user =  $this->_model->getRowByUp($uname , $upass);
       if($user)
       {
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['user_name'] = $user['name'];
            $_SESSION['user_type'] = $user['utype'];

           // header("location:index.php?id=cat/index");
              header("location:index.php?id=book/indexp");

          // echo "welcome";
           //exit();
       }
       else
           return  $this->login();


    }

    public  function logout()
    {

         session_destroy();
        // header("location:index.php?id=book/indexp");
        header("location:index.php?id=user/login");

    }



    public function profile()
    {
        $id = $_SESSION['user_id'];
        $row = $this->_model->getRowById($id);
        $this->_setView("profile");

        $this->_view->set('title', "ویرایش پروفایل");
        $this->_view->set('row', $row );
        return $this->_view->output();
    }

    public function mypass()
    {
        $id = $_SESSION['user_id'];
        $row = $this->_model->getRowById($id);
        $this->_setView("mypass");

        $this->_view->set('title', "تغییر کلمه عبور ");
        $this->_view->set('row', $row );
        return $this->_view->output();
    }

}	 
	 
?>