import 'package:e_commerce_task/models/product_model.dart';
import 'package:e_commerce_task/services/api_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
  //for search functionality
  var filteredProductList = <Product>[].obs;

  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService().fetchProducts();
      productList.assignAll(products);
      filteredProductList.addAll(products);
    } finally {
      isLoading(false);
    }
  }

  void filterProducts(String text) {
    if (text.isEmpty) {
      filteredProductList.assignAll(productList);
    } else {
      filteredProductList.assignAll(productList
          .where((product) =>
              product.title.toLowerCase().contains(text.toLowerCase()))
          .toList());
    }
  }
}
