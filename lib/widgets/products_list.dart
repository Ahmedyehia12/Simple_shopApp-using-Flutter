import 'package:flutter/material.dart';
import'package:training/models/ProductData.dart';
import'package:training/models/Product_model.dart';
import 'package:provider/provider.dart';

class CustomListview extends StatefulWidget {
  const CustomListview({super.key, this.isIcon = true});

  final bool isIcon;

  @override
  State<CustomListview> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListview> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ProductData>(context);
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              ListTile(
                title: Text(
                  prov.products[index].name!,
                  style: const TextStyle(fontSize: 30),
                ),
                subtitle:
                Text("${prov.products[index].price}"),
              ),
              widget.isIcon
                  ? Positioned(
                bottom: 5,
                right: 10,
                child: CircleAvatar(
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          prov.products[index].is_in_cart =
                          !prov.products[index].is_in_cart!;
                        });
                      },
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: prov.products[index].is_in_cart!
                            ? Colors.green
                            : Colors.white,
                      )),
                ),
              )
                  : Container()
            ],
          ),
        );
      },
    );
  }
}

