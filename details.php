<html>
    <head>
        <meta charset="UTF-8">
        <title>Details Page</title>
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
                <h1>Details</h1>
                <?php    
                    // Establishing a connection to the database
                    try
                    {
                        $conn = new PDO('mysql:host=localhost;dbname=u1467200', 'u1467200', '19feb94');
                    }
                    catch (PDOException $exception) 
                    {
                        echo "There was a problem " . $exception -> getMessage();
                    }
                    $playerId = $_GET['player_id'];
                    
                    // Running queries.
                    $query = "SELECT player.*, team.team_id, team.team_name, team.logo "
                            . "FROM `player`, `team` "
                            . "WHERE player.team_id = team.team_id "
                            . "AND player.player_id = $playerId ";
                                
                    $resultset = $conn -> query($query, PDO::FETCH_OBJ);
                    $player = $resultset -> fetch();
                    
                    $query = "SELECT sponsor.sponsor_name "
                        . "FROM `player`, `sponsor`, `player_sponsor` "
                        . "WHERE player.player_id = player_sponsor.player_id "
                        . "AND player.player_id = $playerId "
                        . "AND sponsor.sponsor_id = player_sponsor.sponsor_id";
                    $resultset = $conn -> query($query, PDO::FETCH_OBJ);
                    
                    // Counts how many results were returned from the search.
                    $count = $resultset ->rowCount();
                    
                    // Storing relevant information
                    $team_id = $player -> team_id;
                    $player_id = $player -> player_id;
                    $logo = $player -> logo;
                    
                    // Outputting the details.
                    echo "<p class='details'>";
                    echo "First name: " . $player -> first_name . "<br/>" 
                         . "Last name: " . $player -> last_name . "<br/>" 
                         . "Position: " . $player -> position . "<br/>" 
                         . "Date of birth: " . $player -> date_of_birth 
                         . "<br/>Jersey Number: " . $player -> jersey_number 
                         . "<br/>Team: " . $player -> team_name
                         . "<br/>Sponsors: "; 
                    $iteration = 1;
                    while ($sponsor = $resultset -> fetch())
                    {
                         if ($iteration < $count)
                         {
                             echo $sponsor -> sponsor_name . ", ";
                         }
                         else
                         {
                             echo $sponsor -> sponsor_name . ". ";
                         }
                         $iteration++;
                     }
                    echo "</p>";
                    echo "<hr/>";
                    // Team logo
                    echo "<div class='logo'>";
                        echo "<h1>Team logo: </h1>";
                        echo "<img src='$logo'></img>";
                    echo "</div><br/>";
                    
                    // Query to get players' teammates.
                    $query = "SELECT * FROM player WHERE $team_id = player.team_id "
                            . " AND player.player_id != $player_id";
                    $resultset = $conn->query($query, PDO::FETCH_OBJ);
                    echo "<span class='disclaimer'>Also check out other "
                    . "players from the " . $player -> team_name . ":<br/></span>";
                    
                    // Outputting teammates.
                    while ($player = $resultset -> fetch())
                    {
                        echo "<p class='links'>";
                        echo "<a href='details.php?player_id="
                        .$player -> player_id."'>";
                        echo $player -> jersey_number . " ";
                        echo $player -> first_name . " ";
                        echo $player -> last_name;
                        echo "</a>";
                        echo "</p>";
                    }
                ?>
            </div>
        </div>