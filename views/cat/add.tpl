<?php include('views/header.tpl');?>
<form action="index.php?id=cat/save" method="post">
  <table class="table table-bordered" >
    <tr>
      <th width="100">شناسه</th>
      <td>
      <input type="text" name="id" readonly="readonly" value="0"></td>
    </tr>
    <tr>
      <th>نام دسته</th>
      <td>
      <input class="inputt" type="text" name="name" ></td>
    </tr>
    <tr>
      <th>دسته پدر</th>
      <td>
        <select name="pid">
          <option value="0"> ---- </option>
          <?php foreach($cats as $id => $name ) :  ?>
          <option value="<?=$id ?>"> <?=$name ?> </option>
          <?php endforeach; ?>
        </select>


      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" value="  ذخیره کردن       "></td>
    </tr>
  </table>
</form>
<?php include('views/footer.tpl');?>