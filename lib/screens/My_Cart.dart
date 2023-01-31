import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training/models/ProductData.dart';
import 'package:training/screens/home_screen.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const String id = 'cart_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Consumer<ProductData>(
        builder: (context, productData, child) {
          return ListView.builder(
            itemCount: productData.products.length,
            itemBuilder: (context, index) {
              if (productData.products[index].is_in_cart!) {
                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.favorite),
                    title: Text(productData.products[index].name!),
                    subtitle: Text('${productData.products[index].price!}'),
                    trailing: IconButton(
                      onPressed: () {
                        productData.removeProduct(index);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          );
        },
      ),
    );
  }


}