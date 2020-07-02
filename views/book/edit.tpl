<?php include('views/header.tpl');?>
<form action="index.php?id=book/save" method="post" enctype="multipart/form-data" >
  <input type="hidden" name="logo1" value="<?=$row['logo']?>">
  <input type="hidden" name="pdf1" value="<?=$row['pdf']?>">
  <table class="table table-bordered" >
    <tr>
      <th width="150">شناسه</th>
      <td>
        <input type="text" name="id" readonly="readonly" value="<?=$row['id']?>"></td>
    </tr>
    <tr>
      <th>نام کتاب</th>
      <td>
        <input class="inputt" type="text" name="name" value="<?=$row['name']?>" ></td>
    </tr>
    <tr>
      <th>نام مولف</th>
      <td>
        <input class="inputt" type="text" name="author" value="<?=$row['author']?>" ></td>
    </tr>
    <tr>
      <th>نام ناشر</th>
      <td>
        <input class="inputt" type="text" name="pname" value="<?=$row['pname']?>" ></td>
    </tr>
    <tr>
      <th> سال انتشار</th>
      <td>
        <input class="inputt" type="text" name="pyear" value="<?=$row['pyear']?>" ></td>
    </tr>
    <tr>
      <th>دسته بندی </th>
      <td>

        <select name="cid">
          <option value="0"> ---- </option>
          <?php foreach($cats as $id => $name ) :  ?>
          <option value="<?=$id ?>" <?php if($row['cid']==$id) echo "selected"; ?> > <?=$name ?> </option>
          <?php endforeach; ?>
        </select>


      </td>
    </tr>
    <tr>
      <th>شابک</th>
      <td>
        <input class="inputt" type="text" name="isbn" value="<?=$row['isbn']?>" ></td>
    </tr>
    <tr>
      <th>تصویر</th>
      <td>
        <img src="uploads/logo/<?=$row['logo']?>" width="200" height="200"><br>
        <input class="inputt" type="file" name="logo" ></td>
    </tr>
    <tr>
      <th>فایل ضمیمه</th>
      <td>
           فایل ضمیمه قبلی :
        <?=$row['pdf']?><br>
        <input class="inputt" type="file" name="pdf" ></td>
    </tr>
    <tr>
      <th>چکیده کتاب</th>
      <td>
        <textarea name="abstract" class="inputt" rows="10" ><?=$row['abstract']?></textarea>
      </td>
    </tr>

    <tr>
      <td>&nbsp;</td>
      <td>

        <input type="submit" name="button" value="   ثبت تغییرات      ">
        <input type="reset" name="button" value="  بازنویسی فرم   ">
      </td>
    </tr>
  </table>
</form>
<?php include('views/footer.tpl');?>