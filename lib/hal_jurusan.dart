import 'package:flutter/material.dart';

class Jurusan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20) ,),
            Text("Halaman Jurusan", style: TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.all(20) ,),
            Icon(Icons.event_note, size: 90.0,)
          ],
        ),
      ),
    );
  }
}
