<?php $title = 'Registrazione'; require('.\partial\header.php'); ?>

	<form method="POST" action="handle.php">
		name:<input type="text" name="name"><br>
		surname:<input type="text" name="surname"><br>
		eta:<input type="number" name="eta"><br>
		patente: Si<input type="radio" name="patente" value="true">
				 No<input type="radio" name="patente" value="false"><br>
		<input type="submit" value="Go">
	</form>

<?php require('.\partial\footer.php'); ?>