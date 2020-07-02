<?php
class person {
   private $name;
   private $family;
   
   public function __construct()
   {
     $this->name = 'reza';
   }
   
   public function setname($n)
   {
     $this->name = $n;
   }
   public function getname()
   {
     return $this->name;
   }   
}

class stud extends person{
   private $avgr;
   public function setavgr($a)
   {
     $this->setname('mina');
     $this->avgr = $a;
	 parent::__construct();
	 
   }
}





$p = new person();
echo $p->getname();

$s = new stud();
$s->setname('amin');
$s->setavgr(17);



?>