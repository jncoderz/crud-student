import 'package:crud_op_f_base/models/student_model.dart';
import 'package:flutter/material.dart';

class UpdateStudents extends StatelessWidget {
  UpdateStudents({super.key, required this.student});

  final Student student;

  final TextEditingController rollController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController marksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    rollController.text = "${student.rollno}";
    nameController.text = student.name;
    marksController.text = "${student.marks}";

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Update Students"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [

            const Image(image: AssetImage("assets/images/logo.png"),width: 160,),
            const SizedBox(height: 20,),

            TextField(
              controller: rollController,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey,),

                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: "Roll No."),style: TextStyle(color: Colors.black)
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey,),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: "Name"),style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: marksController,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey,),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: "Marks"),style: TextStyle(color: Colors.black)
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(onPressed: () {}, child: Text("Update")),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    rollController.text = "";
                    nameController.text = "";
                    marksController.text = "";
                  },
                  child: Text("Reset")),
            ])
          ]),
        ),
      ),
    );
  }
}
