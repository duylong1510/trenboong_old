import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

import '../../logic/navigation/size.dart';
import '../../logic/card/card_cubit.dart';

class MainCardContainer extends StatelessWidget {
  const MainCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CubitProvider(create: (context) => CardCubit(), child: CardImage());
  }
}

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CubitBuilder<CardCubit, String>(builder: (_, imgSource) {
      return Center(
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                height: deviceHeight(context) * 0.9,
                width: deviceWidth(context) * 0.9,
                child: Image.asset(imgSource),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    context.cubit<CardCubit>().changeCard("images/bigmom.jpg");
                  },
                  child: const Text('change card')),
            ),
          ],
        ),
      );
    });
    
  }
  
}
