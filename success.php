<?php
include "inc/config.php";
include "layout/header.php";
if (empty($_SESSION['iam_user'])) {
	alert("Silahkan login dahulu.");
	redir("login.php");
}

$user = mysql_fetch_object(mysql_query("select * from user where id='$_SESSION[iam_user]'"));

?>
<div class="col-md-12">

	<div class="alert alert-success">Transaksi Berhasil.</div>
	<div class="row">
		<div class="col-md-12">
			<hr>
			<h4>
				Detail Pesanan yang anda beli:
			</h4>
			<table class="table table-striped table-hove">
				<thead>
					<tr>
						<th>#</th>
						<th>Nama Produk</th>
						<th>Harga Satuan</th>
						<th>QTY</th>
						<th>Harga *</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$pes = mysql_fetch_array(mysql_query("select * from pesanan where user_id='$_SESSION[iam_user]' order by id DESC limit 1"));
					$q = mysql_query("select * from detail_pesanan where pesanan_id='$pes[id]'");
					$total = 0;
					while ($data = mysql_fetch_object($q)) { ?>
						<tr>
							<th scope="row"><?php echo $no++; ?></th>
							<?php
							$katpro = mysql_query("select * from produk where id='$data->produk_id'");
							$p = mysql_fetch_object($katpro);
							?>
							<td><?php echo $p->nama ?></td>
							<td><?php echo number_format($p->harga, 2, ',', '.')  ?></td>
							<td><?php echo $data->qty ?></td>
							<?php $t = $data->qty * $p->harga;
							$total += $t;
							?>
							<td><?php echo number_format($t, 2, ',', '.')  ?></td>
						</tr>
					<?php } ?>
					<tr>
						<td colspan="4" class="text-center">
							<h5><b>TOTAL HARGA</b></h5>
						</td>
						<td class="text-bold">
							<h5><b><?php echo number_format($total, 2, ',', '.') ?></b></h5>
						</td>
					</tr>
				</tbody>
			</table>

		</div>

	</div>
</div>
<?php include "layout/footer.php"; ?>