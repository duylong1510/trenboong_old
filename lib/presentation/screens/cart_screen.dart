import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../logic/navigation/size.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 176, 157, 131),
      child: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                // Navigate back to first screen when tapped!
              },
              child: Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}
