
import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  // final Student = student;
  final TextEditingController rollController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController marksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Add Students"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const Image(
              image: AssetImage("assets/images/logo.png"),
              width: 180,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: rollController,
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: "Roll No."),
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: "Name"),
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: marksController,
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: "Enter Marks"),
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                  onPressed: () {
//                     Student student = Student(
//                         rollno: int.parse(rollController.text),
//                         name: nameController.text,
//                         marks: int.parse(marksController.text));
//                     addStudentAndNavigateToHome(
//                         Student student, BuildContext context) {
//                       final StudentRef = FirebaseFirestore.instance
//                           .collection("students")
//                           .doc();
//                       student.id = StudentRef.id;
//                       final data = student.toJson();
//                       StudentRef.set(data).whenComplete(() {
// //
//                         log("User Inserted." as num);
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const HomeScreen(),
//                             ));
//                       });
//                     }
                  },
                  child: const Text("Add")),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(minimumSize: const Size(80, 40)),
                  onPressed: () {
                    rollController.text = "";
                    nameController.text = "";
                    marksController.text = "";
                  },
                  child: const Text("Reset")),
            ])
          ]),
        ),
      ),
    );
  }
}
