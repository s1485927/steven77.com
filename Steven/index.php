



<html>
<head> 
 <script>

function validateForm() {
  var x = document.forms["myForm"]["psw"].value;

   var y = x.substring(0, 1);
    if y==(1||2||3||4) 
    alert("Password cannot start wit 1 2 3 4 ")  ;
     
   }


}

</script>
</head>

<body> 


			
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
                       
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                           <a class="nav-item nav-link" href="sponsors.htm">Home</a>
                          
                          
                           <a class="nav-item nav-link last" href="#"><img src="images/search_icon.png"></a>
                           <a class="nav-item nav-link last" href="contact.html"><img src="images/shop_icon.png"></a>
                        </div>
                    </div>
                    </nav>
		

   <p>  
     <p> 
    <form  name="myForm" onsubmit="return validateForm()"  method='post'action='index.php' > 



      <table>
        
        <tr>
          <td><label for="customer_id"><b>Customer ID</b></label></td>
          <td><input type="text" placeholder="Enter Username" name="uname" required></td>
          
        </tr>
        <tr>
          <td><label for="pin"><b> Pin</b></label></td>
          <td><input type="password" placeholder="Enter Pin" name="psw" required></td>
      
        </tr>
        <tr>
            <td>  </td>
          <td> <button type="submit">Login</button></td>
          
        </tr>
        
      </table>

      <p id="demo"></p>
    </form>


    <?php
include ('connector.php');

$user= @$_POST['uname'];
$pin= @$_POST['psw'];



$query=mysqli_query($conn_to_steven,"select * FROM mail_received where customer_id = '$user' " );
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

</body>

</html>