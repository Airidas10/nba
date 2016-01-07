<!DOCTYPE html> 
<html>
    <head>
        <meta charset="UTF-8">
        <title>Design Page</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        
        <div id="container">
            <div id="header">
                <img src="images/nba.jpg" alt="nba"></img> 
                <a href="index.php">Index page</a>
                <a href="design.php">Design page</a>
            </div>
            <div id="description">
               <h2>Scenario description:</h2>
               <p>This scenario is inspired by the NBA (National Basketball 
                Association), which is the most popular basketball league in 
                the world.</p>
                <p>NBA consists of 30 teams (6 used for the purpose of this 
                assignment. Every team has multiple players, but that number may 
                drop to 0 during the off-season. 1 player can only belong to 1 
                team at a time and this assignment DOES NOT take past or future 
                into account.</p>
                <p>Each NBA player has at least 1 sponsor, but there is no limit
                of how many sponsor a player can have.</p>
                <p>This website allows the user to search through the players 
                stored in the database by their first name, last name or the 
                team they are playing for (the name of the team entered in the 
                search bar has to be precise i.e. Typing in "Los Angeles Lakers" 
                will return all the players from that team, but only "Los Angeles" 
                or "Lakers" is not enough).</p>
                
                <hr/>
                <div id="class">
                    <h2>Class Diagram</h2>
                    <img class="diagram" src='images/Class_Diagram.png'>    
                    <h2>Physical Data Model</h2>
                    <img class="diagram" src='images/Physical_Model.png'>
                </div>
                
                <div id="tables">
                    <hr/>
                    <h2>Database Tables:</h2>
                    <?php  
                        // Establishing a connection to the database.
                        try
                        {
                            $conn = new PDO('mysql:host=localhost;dbname=u1467200', 'u1467200', '19feb94');
                        }
                        catch (PDOException $exception) 
                        {
                            echo "There was a problem " . $exception -> 
                                    getMessage();
                        }
                        
                        // Outputting the player table
                        $query = "SELECT * FROM player";
                        $resultset = $conn->query($query, PDO::FETCH_OBJ);
                        echo "<h3>player:</h3>";
                        echo "<table class='tbl'>";  
                        echo "<tr><th>player_id</th><th>team_id</th>"
                                . "<th>first_name</th><th>last_name</th>"
                                . "<th>position</th><th>date_of_birth</th>"
                                . "<th>jersey_number</th></tr>";
                        while ($player = $resultset -> fetch())
                        {
                            echo "<tr>";
                                echo "<td>" . $player->player_id . 
                                        "</td>";
                                echo "<td>" . $player->team_id . 
                                        "</td>";
                                echo "<td>" . $player->first_name . 
                                        "</td>";
                                echo "<td>" . $player->last_name . 
                                        "</td>";
                                echo "<td>" . $player->position . 
                                        "</td>";
                                echo "<td>" . $player->date_of_birth . 
                                        "</td>";
                                echo "<td>" . $player->jersey_number . 
                                        "</td>";
                            echo "</tr>";
                        }
                        echo '</table>';
                        
                        // Outputting the team table
                        $query = "SELECT * FROM team";
                        $resultset = $conn->query($query, PDO::FETCH_OBJ);
                        echo "<h3>team:</h3>";
                        echo "<table class='tbl'>";  
                        echo "<tr><th>team_id</th>"
                        . "<th>team_name</th><th>year_founded</th>"
                        . "<th>city</th><th>state</th><th>championships</th>"
                        . "<th>finals_appearances</th><th>logo</th></tr>";
                        while ($team = $resultset -> fetch())
                        {
                            echo "<tr>";
                                echo "<td>" . $team->team_id . 
                                        "</td>";
                                echo "<td>" . $team->team_name . 
                                        "</td>";
                                echo "<td>" . $team->year_founded . 
                                        "</td>";
                                echo "<td>" . $team->city . 
                                        "</td>";
                                echo "<td>" . $team->state . 
                                        "</td>";
                                echo "<td>" . $team->championships . 
                                        "</td>";
                                echo "<td>" . $team->finals_appearances . 
                                        "</td>";
                                echo "<td>" . $team->logo . 
                                        "</td>";
                            echo "</tr>";
                        }
                        echo '</table>';
                        
                        // Outputting the sponsor table
                        $query = "SELECT * FROM sponsor";
                        $resultset = $conn->query($query, PDO::FETCH_OBJ);
                        echo "<h3>sponsor:</h3>";
                        echo "<table class='tbl'>";  
                        echo "<tr><th>sponsor_id</th><th>sponsor_name</th></tr>";
                        while ($sponsor = $resultset -> fetch())
                        {
                            echo "<tr>";
                                echo "<td>" . $sponsor->sponsor_id . 
                                        "</td>";
                                echo "<td>" . $sponsor->sponsor_name . 
                                        "</td>";
                            echo "</tr>";
                        }
                        echo '</table>';
                        
                        // Outputting the player_sponsor table
                        $query = "SELECT * FROM player_sponsor ORDER BY player_id";
                        $resultset = $conn->query($query, PDO::FETCH_OBJ);
                        echo "<h3>player_sponsor:</h3>";
                        echo "<table class='tbl'>";  
                        echo "<tr><th>player_id</th><th>sponsor_id</th></tr>";
                        while ($ps = $resultset -> fetch())
                        {
                            echo "<tr>";
                                echo "<td>" . $ps->player_id . 
                                        "</td>";
                                echo "<td>" . $ps->sponsor_id . 
                                        "</td>";
                            echo "</tr>";
                        }
                        echo '</table>';
                        
                    ?>
                </div>
            </div> 
        </div>





