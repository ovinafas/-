<?php include('views/header.tpl');?>
<table class="table table-bordered" >
  <tr>
    <th width="150">شناسه کتاب</th>
    <td><?=$book['id']?></td>
    <th>نام کتاب</th>
    <td>
      <a  href="index.php?id=chap/indexp/<?php echo $book['id']; ?>">
      <?=$book['name']?>
      </a>
    </td>
  </tr>
</table>
  <table class="table table-bordered" >
    <tr>
      <td>  <?=$row['name']?>
        <?php if($row['pdf']!=''): ?>

       ( <a target="_blank" href="index.php?id=chap/down/<?php echo $row['id']; ?>">
          دانلود )</a>
    <?php endif; ?>
      </td>
    </tr>
    <tr>
      <td>  <?php echo nl2br($row['body']); ?>      </td>
    </tr>
  </table>
</form>
<?php include('views/footer.tpl');?>