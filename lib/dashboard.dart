import 'package:flutter/material.dart';
import 'package:student_id/studentdetail.dart';

class DashBoard extends StatefulWidget{
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Student DashBoard",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined)
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_2_outlined)
          ),
        ],
      ),
      body: ListView(
          children: <Widget>[
      Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 150,
            child:Card(
            child: ListTile(
              leading: SizedBox(
                height: 70,
                child: Image.asset("image/stu details.jpg"),
              ),
              title: Text("Fill/Edit Student Detail",
              style: TextStyle(
                  color: Colors.blue.shade400, fontSize: 18)),
              subtitle: Text('(Student details should be filled first)',
                  style: TextStyle(
                      color: Colors.redAccent.shade200, fontSize: 18)),
              trailing: ElevatedButton(
                style:
                ElevatedButton.styleFrom(primary: Colors.blue.shade200),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentDetail()));
                },
                child: const Text(
                  'Student Details',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
    ),
      ),
      ),
            Padding(
                padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 200,
                child:Card(
                  child: ListTile(
                    leading: SizedBox(
                      height: 70,
                      child: Image.asset("image/stu id.jpg"),
                    ),
                    title: Text('View ID Card',
                        style: TextStyle(
                            color: Colors.blue.shade400, fontSize: 18)),
                    subtitle: Text('(Before viewing your ID card, your full data must be filled in STUDENT DETAIL section)',
                        style: TextStyle(
                            color: Colors.redAccent.shade200, fontSize: 18)),
                    trailing: ElevatedButton(
                      style:
                      ElevatedButton.styleFrom(primary: Colors.blue.shade200),
                      onPressed: () {},
                      child: const Text(
                        'View My ID Card',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),)
    ],
          ),
    );
  }
}