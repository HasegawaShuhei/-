import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_app/main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      home: ChangeNotifierProvider(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("provider"),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(model.practiceText,
                    style: TextStyle(fontSize: 30),
                    ),
                    RaisedButton(
                      child: Text("ボタン"),
                      onPressed: () {
                    //modelのメソッド発火
                        model.ChangePracticeText();
                    },
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}

//modelファイルを作成して、変数などはmodelファイルから読み込む
//①pubspec.yamlにproviderをインストールする pub getでインストール
// ②modelファイルを作成し、class MainModel extends ChangeNotifier{}や発火したいメソッドを入力
//③ScaffoldをChangeNotifierProvider〜で囲う
//④対象の箇所をConsumerで囲う
