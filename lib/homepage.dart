import 'dart:async';
import 'package:flutter/material.dart';
import 'package:student_id/frontpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 3),
            ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>FrontPage()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/id_card.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      )
    );
  }
}
