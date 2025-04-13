<?php
$categoryName = "Disney Princess";
$posters = [
    "shared/posters/princess1.jpg",
    "shared/posters/princess2.jpg",
    "shared/posters/princess3.jpg"
];

$titles = [
    "Frozen (2013)",
    "Moana (2016)",
    "Tangled (2010)"
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
