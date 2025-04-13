<?php
$categoryName = "Disney Classic";
$posters = [
    "shared/posters/classic1.png",
    "shared/posters/classic2.png",
    "shared/posters/classic3.png"
];

$titles = [
    "Lion King (1994)",
    "Beauty and the Beast (1991)",
    "Aladdin (1992)"
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
