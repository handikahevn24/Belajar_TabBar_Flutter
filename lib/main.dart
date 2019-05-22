import 'package:flutter/material.dart';

import './hal_fasilitas.dart' as fasilitas;
import './hal_guru.dart' as guru;
import './hal_tentang.dart' as tentang;
import './hal_jurusan.dart' as jurusan;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMKN 1 SINDANG',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App SMKN 1 Sindang Demo"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
              text: "Tentang",
            ),
            Tab(
              icon: Icon(Icons.event_note),
              text: "Jurusan",

            ),
            Tab(
              icon: Icon(Icons.featured_play_list),
              text: "Fasilitas",
            ),
            Tab(
              icon: Icon(Icons.people),
              text: "Guru",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          tentang.Tentang(),
          jurusan.Jurusan(),
          fasilitas.Fasilitas(),
          guru.Guru(),
        ],
      ),
    );
  }
}
