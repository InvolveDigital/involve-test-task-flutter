import 'package:bottomsheet/components/bottom_sheet/bottom_sheet.dart';
import 'package:bottomsheet/components/button/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void openBottomSheet() {
    BottomSheetSlider(
      buttonText: 'Close',
      title: 'Authorise Login Attempt',
      paragraph:
          "Someone is trying to log in to your account on Involve Pro website. If it’s you, approve it here. If it’s not, reject it, and let us know, as your account may be at risk.",
    ).showBottomSheet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(
                onTap: openBottomSheet,
                title: "Open Bottom Sheet",
                loading: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
