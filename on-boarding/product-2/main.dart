

import 'product.dart';
import 'product_manager.dart';
void main(){
  print("hello there");
  var admin = ProductManager();
  var product1 = Product(ID: 1, Name:"appel", Description: "fruit", Price: 20);
  var product2 = Product(ID: 2, Name:"Mango", Description: "fruit", Price: 10); 
  admin.addProduct(product1);
  admin.addProduct(product2);
  admin.veiwAllProducts();
  admin.updateProduct(2, name: "banana");
  admin.veiwAllProducts();
  
  

}