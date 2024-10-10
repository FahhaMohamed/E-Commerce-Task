import 'package:e_commerce_task/models/product_model.dart';
import 'package:e_commerce_task/services/api_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
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
    } finally {
      isLoading(false);
    }
  }
}
