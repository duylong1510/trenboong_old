import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../logic/navigation/size.dart';

class PromotionsScreen extends StatefulWidget {
  @override
  _PromotionsScreenState createState() => _PromotionsScreenState();
}

class _PromotionsScreenState extends State<PromotionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: deviceHeight(context) * 0.82,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text("hạng của bạn: Đồng"),
            ),
            Image.asset(
              'images/rank_dong.png',
              fit: BoxFit.cover,
            ),
            Container(
              child: Text("Ưu đãi"),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Giảm 35k cho đơn từ 150k'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Giảm 70k cho đơn từ 599k'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Giảm 10k cho đơn từ 269k'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Giảm 15k cho đơn từ 399k'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Giảm 15k cho đơn từ 399k'),
            ),
          ],
        ),
      ),
    );
  }
}
