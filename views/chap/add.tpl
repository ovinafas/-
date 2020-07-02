<?php include('views/header.tpl');?>
<table class="table table-bordered" >
  <tr>
    <th width="150">شناسه کتاب</th>
    <td><?=$book['id']?></td>
    <th>نام کتاب</th>
    <td><?=$book['name']?></td>
  </tr>
</table>
<form action="index.php?id=chap/save" method="post" enctype="multipart/form-data" >
  <input type="hidden" name="bid" value="<?=$book['id']?>">
  <input type="hidden" name="pdf1" value="">
  <table class="table table-bordered" >
    <tr>
      <th width="150">شناسه</th>
      <td>
      <input type="text" name="id" readonly="readonly" value="0"></td>
    </tr>
    <tr>
      <th>عنوان </th>
      <td>
        <input class="inputt" type="text" name="name" ></td>
    </tr>
    <tr>
      <th>فایل ضمیمه</th>
      <td>
        <input class="inputt" type="file" name="pdf" ></td>
    </tr>
    <tr>
      <th>متن فصل </th>
      <td>
       <textarea name="body" class="inputt" rows="10" ></textarea>
        </td>
    </tr>

    <tr>
      <td>&nbsp;</td>
      <td>

        <input type="submit" name="button" value="  اضافه کردن فصل       ">
        <input type="reset" name="button" value="  بازنویسی فرم   ">
      </td>
    </tr>
  </table>
</form>
<?php include('views/footer.tpl');?>