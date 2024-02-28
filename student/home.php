
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
			$sql = "SELECT * FROM faculty";
			$result = $connection->query($sql);

            if (!$result) {
				die("Invalid query: " . $connection->error);
			}

            // read data of each row
            $facultyans=0;
			while($row = $result->fetch_assoc()) {
                    $facultyans++;
            }

            $sql = "SELECT * FROM student";
			$result = $connection->query($sql);

            if (!$result) {
				die("Invalid query: " . $connection->error);
			}

            // read data of each row
            $studentans=0;
			while($row = $result->fetch_assoc()) {
                    $studentans++;
            }


            $sql = "SELECT * FROM course";
			$result = $connection->query($sql);

            if (!$result) {
				die("Invalid query: " . $connection->error);
			}

            // read data of each row
            $courseans=0;
			while($row = $result->fetch_assoc()) {
                    $courseans++;
            }
?>
            <!-- <p>Hey,</p> -->
            <h3>Welcome To Student Dash board</h3>
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">STUDENT Dashboard</span>
                </div>

                <div class="boxes">
                    <div class="box box1">
                        <i class="uil uil-thumbs-up"></i>
                        <span class="text">Total EXAM</span>
                        <span class="number">0</span>
                    </div>
                    <div class="box box2">
                        <i class="uil uil-comments"></i>
                        <span class="text">Total panding exam</span>
                        <span class="number">0</span>
                    </div>
                    <div class="box box3">
                        <i class="uil uil-share"></i>
                        <span class="text">upcoming exam</span>
                        <span class="number">0</span>
                    </div>
                </div>
            </div>
            </div>
        </div>
