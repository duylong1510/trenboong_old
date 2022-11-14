import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:trenboong_app/dataLayer/model.dart';
import 'package:trenboong_app/presentation/screens/list_image.dart';

import '../../logic/card/card_cubit.dart';
import '../../logic/navigation/size.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: deviceHeight(context) * 0.82,
      color: Color.fromARGB(255, 99, 125, 108),
      child: MainListCardContainer(),
    );
  }
}
