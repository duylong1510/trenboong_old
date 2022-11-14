import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

import '../../logic/card/listcards_cubit.dart';
import '../../logic/navigation/size.dart';
import '../../logic/card/card_cubit.dart';

class MainListCardContainer extends StatelessWidget {
  const MainListCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CubitProvider(
        create: (context) => ListCardCubit(), child: ListCardImage());
  }
}

class ListCardImage extends StatelessWidget {
  const ListCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CubitBuilder<ListCardCubit, List<String>>(
        builder: (_, listimgSource) {
      return Center(
        child: Stack(
          children: [
            Center(
              child: ListView(
                children: [
                  SizedBox(
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Go back!'),
                    ),
                  ),
                  Image.asset(
                    'images/bigmom.jpg',
                    fit: BoxFit.cover,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("change")),
                  Image.asset(
                    'images/shanji.png',
                    fit: BoxFit.cover,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("change")),
                  Image.asset(
                    'images/zoro.jpg',
                    fit: BoxFit.cover,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("change")),
                  Image.asset(
                    'images/luffy.jpg',
                    fit: BoxFit.cover,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        context
                            .cubit<CardCubit>()
                            .changeCard("images/zoro.jpg");
                      },
                      child: Text("change")),
                ],
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: ElevatedButton(
            //       onPressed: () {
            //         context.cubit<CardCubit>().changeCard("images/bigmom.jpg");

            //       },
            //       child: const Text('change card')),
            // ),
          ],
        ),
      );
    });
  }
}
