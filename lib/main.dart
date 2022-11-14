
import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:trenboong_app/presentation/screens/root_screen.dart';
import 'logic/navigation/navigation_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return CubitProvider(
        create: (_) => NavigationCubit(),
        child: CubitBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(primarySwatch: Colors.blue),
              debugShowCheckedModeBanner: false,
              home: RootScreen(),
            );
          },
        ));
  }
}
