import 'package:cubit/cubit.dart';

class CardCubit extends Cubit<String> {
  CardCubit() : super("images/shanji.png");

  void changeCard(String cardUrl) {
    emit(cardUrl);
  }
}
