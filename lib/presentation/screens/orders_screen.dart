import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trenboong_app/presentation/screens/oder_detail.dart';

import '../../logic/navigation/constants/List_items.dart';
import '../../logic/navigation/size.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //   height: deviceHeight(context) * 0.82,
      child: ListView.builder(
        itemCount: groceries.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Card(
                child: ListTile(
                  title: Text(groceries[index]),
                  trailing: Text('\$${prices[index]}'),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    tooltip: ' Order ',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderDetailScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
