import 'dart:ui';

import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:trenboong_app/logic/navigation/constants/nav_bar_items.dart';
import 'package:trenboong_app/logic/navigation/navigation_cubit.dart';
import 'package:trenboong_app/presentation/screens/home_screen.dart';
import 'package:trenboong_app/presentation/screens/more_screen.dart';
import 'package:trenboong_app/presentation/screens/promotions_screen.dart';
import 'package:trenboong_app/presentation/screens/orders_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../logic/navigation/size.dart';
import 'changecard_screen.dart';
import 'cart_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      key: _scaffoldKey,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: deviceHeight(context) * 0.1,
        backgroundColor: Color.fromARGB(255, 176, 157, 131),
        leading: GestureDetector(
          child: Icon(Icons.person, color: Colors.black),
        ),
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('Duy Long ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 150.0,
              height: 40.0,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'hạng đồng> ',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),

      /// navigation custom
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 2, 106, 38),
        child: SizedBox(
          height: deviceHeight(context) * 0.08,
          child: Row(
            children: [
              // change card screen
              SizedBox(
                width: deviceWidth(context) * 0.25,
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.card_giftcard),
                  tooltip: ("Change card"),
                  onPressed: () {
                    _scaffoldKey.currentState!
                        .showBottomSheet((context) => CardScreen());
                  },
                ),
              ),
              // oder button
              SizedBox(
                width: deviceWidth(context) * 0.25,
                child: IconButton(
                  color: Colors.white,
                  tooltip: ("Orders"),
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    _scaffoldKey.currentState!
                        .showBottomSheet((context) => OrdersScreen());
                  },
                  // child: Text("Orders")
                ),
              ),
              // isScrollControlled: true,
              SizedBox(
                width: deviceWidth(context) * 0.25,
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.discount),
                  tooltip: ("promotion"),
                  onPressed: () {
                    _scaffoldKey.currentState!
                        .showBottomSheet((context) => PromotionsScreen());
                  },
                  // child: Text("promotion")
                ),
              ),
              SizedBox(
                width: deviceWidth(context) * 0.25,
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.event),
                  tooltip: ("event"),
                  onPressed: () {
                    _scaffoldKey.currentState!
                        .showBottomSheet((context) => MoreScreen());
                  },
                ),
              ),
              // widget,
            ],
          ),
        ),
      ),

      body: CubitBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
        if (state.navbarItem == NavbarItem.changecard) {
          return HomeScreen();
        }
        return Container();
      }),
    );
  }
}
