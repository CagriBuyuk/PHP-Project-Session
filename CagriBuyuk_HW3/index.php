
<?php
require "db.php";


/*
session_start();

$tag = $_POST['tag'];
$_SESSION['tag'][] = "ADD $tag" ;

$stmt = $db->prepare("insert into tags (team) values ( ? )") ;
$stmt->execute([$tag]) ;

header("Location: index.php");

$tag = $_GET["tag"];
$_SESSION['tag'][] = "DELETE $tag" ;
$stmt = $db->prepare("delete from tags where team = ?") ;
$stmt->execute([$tag]);

showing tags is working but adding is not...

*/

try {
    $rs = $db->query("SELECT * FROM projects");
    $projects = $rs->fetchAll(PDO::FETCH_ASSOC);
    //var_dump($projects);
} catch(PDOException $ex){
    die("select query problem");
}
if ( !empty($_POST)) 
{
    extract($_POST) ;

}

if ( !empty($_GET)) 
{
    extract($_GET) ;

}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HW-3</title>
    <link rel="stylesheet" href="app.css">
</head>
<body>
    <form action="" method="post" class= "center">
        <input type="text" id="search" placeholder="search tag...">
    </form>
    <div class="tag" >
    <?php
       echo "<p>" , $tag ?? ""  , " &#10005; </p>" ;
    ?>
    </div>
    <br><br><br>
    <hr>
    <table>
        <tr>
            <th>Team</th>
            <th>Project Name</th>
            <th>Supervisor</th>
            <th>Tags</th>
            <th>Like</th>
        </tr>
        <?php foreach($projects as $project) :
            $stmt = $db -> prepare("select * from tags where team = ? ");
            $stmt -> execute([$project["team"]]);
            $tags = $stmt -> fetchAll(PDO::FETCH_ASSOC); 
            if($project["likeit"] == 1){
                $str = " &#128153;";
            }else{
                $str = " &#129293;";
            }
            ?>
        <tr>
            <td><?= $project["team"] ?></td>
            <td><?= $project["name"] ?></td>
            <td><?= $project["supervisor"] ?></td>
            <td>
            <?php foreach($tags as $tag) : ?>
                <a href="?tag=<?= $tag["tagName"] ?>" class="tag"><?= $tag["tagName"] ?></a>
            <?php endforeach ?>
            </td>
            
            <td><?= $str ?></td>
        </tr>
        <?php endforeach ?>
    </table>

    

    </form>
</body>
</html>