<?php 
	include"inc/config.php";
	include"layout/header.php";
?> 
	
	<div class="container">
		<?php
			$q = mysql_query("select * from user");
		?>
		<h4>Daftar member</h4>
		<hr>
		
		<table class="table table-striped table-hove"> 
			<thead> 
				<tr> 
					<th>NO</th> 
					<th>Nama</th> 
				</tr> 
			</thead> 
			<tbody> 
		<?php while($data=mysql_fetch_object($q)){ ?> 
				<tr> 
					<th scope="row"><?php echo $no++; ?></th> 
					<td><?php echo $data->nama ?></td> 
				</tr>
		<?php } ?>
			</tbody> 
		</table> 
        
					<p>
						<a href="login.php" class="btn btn-success btn-sm" href="#" role="button">Login</a>
						<a href="register.php" class="btn btn-warning btn-sm" href="#" role="button">registrasi</a>
					</p>
    </div> <!-- /container -->
	
    <?php include"layout/footer.php"; ?>