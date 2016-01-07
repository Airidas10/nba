<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>NBA</title> 
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        
        <div id="container">
            <div id="header">
                <img src="images/nba.jpg" alt="nba"></img> 
                <a href="index.php">Index page</a>
                <a href="design.php">Design page</a>
            </div>
            <div id="description2">
                <h2>Search our database:</h2>
                <div id="form">
                    <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" 
                    method="get">
                        <label for="search">Enter your search term</label>
                        <input type="text" name="search" id="search" value="<?php 
                            if (isset($_GET['search'])) echo $_GET['search']; ?>">
                        <input type="submit" name="Search" value="Search">
                    </form>
                </div>    
                <br/><hr/>
        <?php
            $search_term = "";
            // Establish a connectiong to the database.
            try
            {
                $conn = new PDO('mysql:host=localhost;dbname=u1467200', 'u1467200', '19feb94');
            }
            catch (PDOException $exception) 
            {
                echo "There was a problem " . $exception -> getMessage();
                //echo $_GET['search']."&".$_GET['page'];
            }
            
            if(isset($_GET['Search']))
            {
                $search_term = $_GET['search'];
                if(!empty($search_term))
                {
                    // Run the query to find out the number of results.
                    $query = "SELECT player.* FROM `player`INNER JOIN `team` " 
                            . "ON team.team_id = player.team_id "
                            . "WHERE player.first_name LIKE '%$search_term%' "
                            . "OR player.last_name LIKE '%$search_term%' "
                            . "OR '$search_term' IN
                                (SELECT CONCAT(first_name, ' ', last_name)) "
                            . "OR team.team_name = '$search_term' ";
                            
                    
                    $resultset = $conn->query($query, PDO::FETCH_OBJ);
                    
                    // Counts how many results were returned from the search.
                    $count = $resultset ->rowCount();
                    if ($count == 1)
                    {
                        echo "Your search provided " . $count . " result";
                    }
                    else
                    {
                        echo "Your search provided " . $count . " results";
                    }
                    
                    // Paging system
                    if (isset($_GET["page"])) 
                    { 
                        $page = $_GET["page"]; 
                        $search_term = $_GET["search"];
                    } 
                    else 
                    { 
                        $page = 1;    
                    } 
                    // Determine which results to show in which page.
                    $start_from = ($page-1) * 10;
                    
                    // How many results per one page
                    $pageLimit = 10;
                     
                    // Query
                    $query = "SELECT player.* FROM `player`INNER JOIN `team` " 
                            . "ON team.team_id = player.team_id "
                            . "WHERE player.first_name LIKE '%$search_term%' "
                            . "OR player.last_name LIKE '%$search_term%' "
                            . "OR '$search_term' IN
                                (SELECT CONCAT(first_name, ' ', last_name)) "
                            . "OR team.team_name = '$search_term' "
                            . "ORDER BY player.player_id ASC LIMIT $start_from, $pageLimit";
                    $resultset = $conn->query($query, PDO::FETCH_OBJ);
                    
                    //Outputting the results.
                    while ($player = $resultset -> fetch())
                    {
                        echo "<p>";
                        echo "<a href='details.php?player_id="
                        .$player -> player_id."'>";
                        echo $player -> first_name . " ";
                        echo $player -> last_name;
                        echo "</a>";
                        echo "</p>";
                    }
                    
                    // Determining how many pages will be needed and outputting them.
                    $totalPages = ceil($count / $pageLimit);
                    for ($i = 1; $i <= $totalPages; $i++) 
                    {
                        echo "<a href='index.php?search=$search_term&Search=Search&page=$i'>$i</a> "; 
                    } 
                }
                
                // If the search bar was empty
                else
                {
                    echo "<br/> Please enter a search term!";
                }
            }?>
            
            
        </div> 
            
            
            
            
        
    </body>
</html>
