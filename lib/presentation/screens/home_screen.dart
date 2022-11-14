import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trenboong_app/presentation/screens/image.dart';

import '../../logic/navigation/size.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 176, 157, 131),
      child: MainCardContainer(),
    );
  }
}
