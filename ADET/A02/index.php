<?php
$page = "classic";

if (isset($_GET['page'])) {
    $page = $_GET['page'];
    switch ($page) {
        case "classic":
            $page = "classic";
            break;
        case "pixar":
            $page = "pixar";
            break;
        case "princess":
            $page = "princess";
            break;
        default:
            header("Location: ?page=classic");
            break;
    }
} else {
    header("Location: ?page=classic");
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Disney World</title>
    <link rel="icon" href="shared/posters/icon.svg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link rel="stylesheet" href="shared/style.css">
    
</head>

<body>
    <nav class="navbar mb-4" style="background-color: #A2D2FF">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="shared/posters/world.png" alt="Disney World Logo" width="150" height="auto"
                    class="d-inline-block align-text-top">
            </a>
            <form class="d-flex align-items-center" role="search" style="gap: 10px;">
                <input class="search" type="search" placeholder="Search for movies..." aria-label="Search">
                <button class="searchButton" type="submit"> Search </button>
            </form>
        </div>
    </nav>

    <div class="category container">
        <div class="row">
            <div class="col-12">
                <div class="categoryCard">
                    <div class="section">
                        Category:
                    </div>
                    <div class="categoryButton">
                        <a href="?page=classic" class="categoryTitle text-center">Disney Classic</a>
                        <a href="?page=pixar" class="categoryTitle text-center">Disney Pixar</a>
                        <a href="?page=princess" class="categoryTitle text-center">Disney Princess</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="content container">
        <div class="row">
            <div class="col-12">
                <div class="contentCard d-flex">
                    <?php include("shared/" . $page . ".php"); ?>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.min.js"
        integrity="sha384-VQqxDN0EQCkWoxt/0vsQvZswzTHUVOImccYmSyhJTp7kGtPed0Qcx8rK9h9YEgx+"
        crossorigin="anonymous"></script>

</body>

</html>