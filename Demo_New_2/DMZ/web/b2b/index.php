<!DOCTYPE html>
<html>
  <head>
    <title>Products</title>
  </head>
  <body>
    <table>
      <thead>
        <tr>
          <th>Product</th>
          <th>Quantity</th>
          <th>Price</th>
        </tr>
      </thead>
      <tbody>
        <?php
        // D  finir les param  tres de connexion    la base de donn  es
        // $servername = "192.168.3.1";
        $servername = "192.168.2.22";
        $username = "b2b";
        $password = "motdepasseb2b";
        $database = "woodytoys";

        // Se connecter    la base de donn  es
        $connexion = mysqli_connect($servername, $username, $password, $database,"3306");

        // V  rifier la connexion
        if (!$connexion) {
            die("FAIL!" . mysqli_connect_error());
        }

        // Interroger la base de donn  es
        $resultat = mysqli_query($connexion, "SELECT * FROM Products");

        // V  rifier s'il y a des r  sultats
        if (mysqli_num_rows($resultat) > 0) {
            //Afficher les r  sultats
            while ($ligne = mysqli_fetch_assoc($resultat)) {
                // echo "Product : " . $ligne["Product"] . " - Quantity : " . $ligne["Quantity"] . " - Price : " . $ligne["Price"] ."<br>";
                echo "<tr>";
                echo "<td>" . $ligne["Product"] . "</td>";
                echo "<td>" . $ligne["Quantity"] . "</td>";
                echo "<td>" . $ligne["Price"] . "</td>";
                echo "</tr>";
            }
        } else {
            echo "Aucun produit";
        }

        // Fermer la connexion    la base de donn  es
        mysqli_close($connexion);
        ?>
      </tbody>
    </table>
  </body>
</html>