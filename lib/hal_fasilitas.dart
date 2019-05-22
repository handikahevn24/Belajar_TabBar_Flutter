import 'package:flutter/material.dart';

class Fasilitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20) ,),
            Text("Halaman Fasilitas", style: TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(20) ,),
            Icon(Icons.build, size: 90.0,)
          ],
        ),
      ),
    );
  }
}
