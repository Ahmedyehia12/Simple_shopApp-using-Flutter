import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import'package:training/models/product_model.dart';

class ProductData extends ChangeNotifier {
  List<Products> products = [
    Products(
      name: 'product1',
      description: 'product1',
      image: 'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
      price: 10,
      is_in_stock: true,
      is_in_cart: false,
    ),
    Products(
      name: 'product2',
      description: 'product2',
      image: 'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
      price: 10,
      is_in_stock: true,
      is_in_cart: false,
    ),
    Products(
      name: 'product3',
      description: 'product3',
      image: 'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
      price: 10,
      is_in_stock: true,
      is_in_cart: false,
    ),
    Products(
      name: 'product4',
      description: 'product4',
      image: 'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
      price: 10,
      is_in_stock: true,
      is_in_cart: false,
    ),
    Products(
      name: 'product5',
      description: 'product5',
      image: 'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
      price: 10,
      is_in_stock: true,
      is_in_cart: false,
    ),
    Products(
      name: 'product6',
      description: 'product6',
      image: 'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
      price: 10,
      is_in_stock: true,
      is_in_cart: false,
    ),
    Products(
      name: 'product7',
      description: 'product7',
      image: 'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
      price: 10,
      is_in_stock: true,
      is_in_cart: false,
    ),
    Products(
      name: 'product8',
      description: 'product8',
      image: 'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
      price: 10,
      is_in_stock: true,
      is_in_cart: false,
    ),
  ];

  void removeProduct(index) {
    products[index].is_in_cart = false;
    notifyListeners();
  }
}