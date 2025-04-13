<?php
$categoryName = "Disney Pixar";
$posters = [
    "shared/posters/pixar1.jpg",
    "shared/posters/pixar2.jpg",
    "shared/posters/pixar3.jpg"
];

$titles = [
    "Toy Story (1995)",
    "Coco (2017)",
    "Inside Out (2015)"
];
?>

<div class="container mt-4">
    <div class="categoryLabel text-center mb-4">
        <?php echo $categoryName; ?>
    </div>
    <div class="row justify-content-center">
        <?php for ($i = 0; $i < 3; $i++) { ?>
            <div class="col-md-4 mb-3">
                <div class="disneyCard">
                    <div class="imagePoster">
                        <img src="<?php echo $posters[$i]; ?>" class="card-img" alt="<?php echo $titles[$i]; ?>">
                        <div class="movieTitle"><?php echo $titles[$i]; ?></div>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>
