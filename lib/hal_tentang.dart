import 'package:flutter/material.dart';

class Tentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20) ,),
            Text("Halaman Tentang", style: TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(20) ,),
            Icon(Icons.home, size: 90.0,)
          ],
        ),
      ),
    );
  }
}
