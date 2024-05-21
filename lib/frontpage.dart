import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:student_id/loginpage.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 400,
                      width: 378,
                      margin: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRect(
                            child: Image.asset('image/first.jpg',
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 378,
                      margin: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRect(
                            child: Image.asset('image/second.jpg',
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 378,
                      margin: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRect(
                            child: Image.asset('image/third.jpg',
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 378,
                      margin: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRect(
                            child: Image.asset('image/fourth.jpg',
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRect(
                            child: Image.asset('image/boy image.png',
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.blue.shade200),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Login()));
                        },
                        child: const Text(
                          'For Student',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
