import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String practiceText = "provider練習中です"; //デフォのメッセ

  void ChangePracticeText() {
    practiceText = "練習完了です"; //変更後のメッセ
    notifyListeners();
  }
}
