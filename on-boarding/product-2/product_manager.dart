import 'product.dart';

class ProductManager {
  List<Product> products = [];
  
  addProduct(Product product){
    products.add(product);
  }

  veiwAllProducts(){
    print('| ID | Name        |    Description         | Price   |');
    print('|----|-------------|------------------------|---------|');
    for (var product in products){
      print(
        '|${product.ID.toString().padRight(3)} | ${product.Name.padRight(11)} | ${product.Description.padRight(22)} | ${product.Price.toString().padRight(7)} |');
    }
  }
  viewSingleProduct(int id){
    print('| ID | Name        |    Description         | Price   |');
    print('|----|-------------|------------------------|---------|');
    for (var product in products){
      if (id == product.ID){
        print(
        '|${product.ID.toString().padRight(3)} | ${product.Name.padRight(11)} | ${product.Description.padRight(22)} | ${product.Price.toString().padRight(7)} |');

      }
      
    }

  }

  deleteProduct(int id){
    products.removeWhere((product)=> product.ID == id);

  }

  void updateProduct(int id, {String? name, String? description, double? price}) {
      for (var product in products) {
        if (product.ID == id) {
          if (name != null) product.Name = name;
          if (description != null) product.Description = description;
          if (price != null) product.Price = price;
          break;
        }
      }
    }

  }


  


