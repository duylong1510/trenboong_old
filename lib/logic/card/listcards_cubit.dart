import 'package:cubit/cubit.dart';

class ListCardCubit extends Cubit<List<String>> {
  ListCardCubit() : super(["images/shanji.png","images/zoro.png" ,"images/bigmom.png","images/franky.png"]);

  void fetchListCard(List<String> listCard) {
    emit(listCard);
  }
}
