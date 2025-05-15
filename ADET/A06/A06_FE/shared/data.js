var categories = [];
var products = [];

var productloading = document.getElementById("productloading");
var maincontainer = document.getElementById("maincontainer");

const getAllCategories = async () => {
  fetch('http://localhost/Ayisha-Estoque.github.io/ADET/A06/A06_BE/categories.php')
    .then(response => response.json())
    .then(data => {
      categories = data;
      loadCategories();
    });
};

  const getAllProducts = async (categoryID) => {
      const categoryData = {
        categoryID: categoryID
      };

      maincontainer.innerHTML = "";
 
  fetch('http://localhost/Ayisha-Estoque.github.io/ADET/A06/A06_BE/products.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(categoryData)
  })
    .then(response => response.json())
    .then(data => {
      products = data;
      loadProducts();
    });
};

getAllCategories();

var total = 0;

function loadCategories() {
  var categoriesContainer = document.getElementById("categories");
  categoriesContainer.innerHTML = "";

  categories.forEach((category) => {
    categoriesContainer.innerHTML += `
      <div onclick="getAllProducts('` + category.categoryID + `')" class="card mx-1 category-button p-3 text-center">
        <small>` + category.name + `</small>
      </div>
    `;
  });
}

function loadProducts(categoryID) {
      var maincontainer = document.getElementById("maincontainer");
      maincontainer.innerHTML = "";

      products.forEach(product => {
        maincontainer.innerHTML += `
      <div onclick="addToReceipt('` + product.price + `','` + product.code + `')" class="card mx-1 my-2 custom-button content p-3 text-center">
        <img src="` + product.image + `" alt="` + product.name + `" class="product-img mb-2">
        <small>` + product.name + `</small><br>
      </div>
    `;
      });
    }

function addToReceipt(price, code) {
  var receiptContainer = document.getElementById("receipt");
  total = parseFloat(total) + parseFloat(price);

  totalValueElement = document.getElementById("totalValue");
  totalValueElement.innerHTML = total;

  receiptContainer.innerHTML += `
    <div class="d-flex flex-row justify-content-between">
      <div><small>` + code + `</small></div>
      <div><small>` + price + `</small></div>
    </div>
  `;
}
