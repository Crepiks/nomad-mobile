import 'package:flutter/material.dart';

class UnitsView extends StatefulWidget {
  const UnitsView({Key? key}) : super(key: key);

  @override
  _UnitsViewState createState() => _UnitsViewState();
}

class _UnitsViewState extends State<UnitsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Units view")),
      ),
    );
  }
}
