<?php 
class controller 
{ 
	  protected $_model; 
	  protected $_controller; 
	  protected $_action; 
	  protected $_view; 
	  protected $_modelBaseName; 

			 
	  public function __construct($model, $action) 
	  { 
	   	  $this->_controller = ucwords(__CLASS__); 
		  $this->_action = $action; 
		  $this->_modelBaseName = $model; 
		  $modelName = $model.'_model'; 
		  $this->_model = new $modelName(); 
		  $this->_view = new View(HOME . DS . 'views' . DS . strtolower($this->_modelBaseName) . DS . $action . '.tpl'); 

	  } 
	  protected function _setView($viewName) 
	  { 
		  $this->_view = new View(HOME . DS . 'views' . DS . strtolower($this->_modelBaseName) . DS . $viewName . '.tpl');
		  $cats = $this->_model->getCats();
          $this->_view->set('cats', $cats);
	  }

}	 
?>