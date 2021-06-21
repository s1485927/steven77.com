<?php
include ('connector.php');

$query=mysqli_query($conn_to_steven,"select * FROM mail_received " );
$cnt=1;


?>

<table>
<?php
while($row=mysqli_fetch_array($query))

{    ?>	

                <tr>
											<td><?php echo htmlentities($cnt);?></td>
											<td><?php echo htmlentities($row['item_id']);?></td>
											<td><?php echo htmlentities($row['customer_id']);?></td>
											<td> <?php echo htmlentities($row['item_description']);?></td>
											<td><?php echo htmlentities($row['date_received']);?></td>
								
											<td>
											
										</tr>
										<?php $cnt=$cnt+1; } ?>




                                        </table>



