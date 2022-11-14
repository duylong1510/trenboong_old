import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../logic/navigation/size.dart';

class OrderDetailScreen extends StatefulWidget {
  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 176, 157, 131),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Navigate back to first screen when tapped!
                },
                child: Text('Go back!'),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.4,
                width: deviceWidth(context) * 0.7,
                child: Image.asset(
                  'images/food.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.white,
                child: Text(
                  "If drive-through windows and red vinyl booths hold a special place in your heart, this soda fountain-inspired food kit from Clinton Station Diner is sure to make you smile!",
                  style: TextStyle(
                      fontStyle: null,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigate back to first screen when tapped!
                    },
                    child: Text('Buy now!'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigate back to first screen when tapped!
                    },
                    child: Text('Add to cart!'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
