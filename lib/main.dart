import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training/screens/home_screen.dart';
import 'package:training/models/ProductData.dart';
import 'package:training/screens/My_Cart.dart';
void main(List<String>args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
const MyApp({super.key});
@override
Widget build(BuildContext context){
  return ChangeNotifierProvider(
    create: (context)=> ProductData(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      routes:{
    HomeScreen.id:(context)=>const HomeScreen(),
    CartScreen.id:(context)=>const CartScreen(),
  },
  home: const HomeScreen(),
  ),
  );
  }

}

