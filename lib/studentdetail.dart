import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_id/signup_controller.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({super.key});

  @override
  State<StudentDetail> createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
  SignUpController signUpController = Get.put(SignUpController());
  File? pickedFile;
  ImagePicker imagePicker =
  ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: const Text(
          "MY ID Card",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              children: <Widget>[
                Text(
                  "r",
                  style: TextStyle(color: Colors.grey.shade200),
                ),
                Container(
                  height: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Stack(
              children: <Widget>[
                Obx(() =>
                CircleAvatar(
                  backgroundImage: signUpController.isProfilePicPathSet.value == true?
                  FileImage(File(signUpController.profilePicPath.value)) as ImageProvider:
                  AssetImage(
                      "image/stu id.jpg",
                    ),
                  radius: 70,
                ),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: InkWell(
                      child: Icon(
                        Icons.add_a_photo_outlined,
                        color: Colors.white,
                      ),
                      onTap: () {
                        print("Camera clicked");
                        showModalBottomSheet(context: context, builder: (context) => bottomSheet(context));
                      },
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [Colors.blue, Colors.blue.shade200])),
              child: const SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Name of Student :',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Text(
                                'Class :',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(), // Horizontal rule
                          Row(
                            children: [
                              Text(
                                'Division :',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Text(
                                'Email :',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Text(
                                'DOB :',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              Text(
                                'Blood Group :',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Text(
                                'Mobile :',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Text(
                                'Address :',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      width: double.infinity,
      height: size.height * 0.2,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          Text(
            "Choose Profile Photo",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image),
                  SizedBox(height: 5),
                  Text("Gallary",
                    style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 18.0,),
                  ),
                ],
              ),
                onTap: (){
                takePhoto(ImageSource.gallery);
                },
    ),
              SizedBox(width: 80),
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt),
                    SizedBox(height: 5),
                    Text("Camera",
                      style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold,
                        fontSize: 18.0,),
                    ),
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
  Future<void> takePhoto(ImageSource source) async {
    final pickedImage = await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
    signUpController.setProfileImagePath(pickedFile!.path);
  }
}
