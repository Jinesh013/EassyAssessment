<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eassy Asses</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
      table {
        border-collapse: separate;
        border-spacing: 0 15px;
      }
      th {
        background-color: #4287f5;
        color: white;
      }
      th,
      td {
        width: 150px;
        text-align: center;
        border: 1px solid black;
        padding: 5px;
      }
      h2 {
        color: #4287f5;
      }
    </style>
</head>
<body>
    <h1>List of Students</h1>
    <br>
    <table class="tabel">
        <thead>
            <tr>
                <th>Sr.No.</th>
                <th>Name</th>
                <th>Username</th>
                <th>Password</th>
                <th>Year</th>
                <th>Branch</th>
                <th>Semester</th>
                <th>Date-Time</th>
            </tr>
        </thead>

        <tbody>
            <?php
            $servername = "localhost";
			$username = "root";
			$password = "";
			$database = "easyassessment";

			// Create connection
			$connection = new mysqli($servername, $username, $password, $database);

            // Check connection
			if ($connection->connect_error) {
				die("Connection failed: " . $connection->connect_error);
			}

            // read all row from database table
			$sql = "SELECT * FROM student";
			$result = $connection->query($sql);

            if (!$result) {
				die("Invalid query: " . $connection->error);
			}

            // read data of each row
			while($row = $result->fetch_assoc()) {
                $a=$row["username"];
                echo "<tr>
                    <td>" . $row["Sr.No."] . "</td>
                    <td>" . $row["name"] . "</td>
                    <td>" . $row["username"] . "</td>
                    <td>" .$row["password"]."</td>
                    <td>" . $row["yearcode"] . "</td>
                    <td>" . $row["branch"] . "</td>
                    <td>" . $row["currsem"] . "</td>
                    <td>" . $row["create_datetime"] . "</td>
                    
                </tr>";
            }

            $connection->close();
            ?>
        </tbody>
    </table>
</br>
</body>
</html>