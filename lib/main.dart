import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp{
const MyApp({super.key});
@override
Widget build(BuildContext context){
  return ChangeNotifierProvider(create: (context)=> ProductData(),
  child: MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData.light(),
  routes:{
    Homescreen.id:(context)=>const Homescreen(),
    Shopscreen.id:(context)=>const Shopscreen(),
  },
  home: const Homescreen(),
  ),
  );
  }

}

