import'package:flutter/material.dart';
import'package:training/widgets/products_list.dart';
import'package:training/screens/My_Cart.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: (){
            Navigator.pushNamed(context, CartScreen.id);
          },
        ),
        title: const Text('Home'),
      ),
      body: const CustomListview(),
    );
  }
}