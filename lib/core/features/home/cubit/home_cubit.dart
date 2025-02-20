import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:nti_task/core/style/image_app.dart';
import 'package:nti_task/core/style/string_app.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  var count = 0;
  String text = StringApp.A;
  String image= ImageApp.backGroundImage1 ;

  void add() {
    count++;
    emit(HomeUbdate());
  }

  void minus() {
    if (count > 0) count--;
    emit(HomeUbdate());
  }

  void reset() {
    count = 0;

    emit(HomeUbdate());
  }

 void changeImage({required String newImage}){
    image=newImage;
    emit(HomeUbdate());}

  void changText({required String newText}){
    text=newText;
    emit(HomeUbdate());


  }
}
