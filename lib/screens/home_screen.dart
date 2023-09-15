import 'package:crud_op_f_base/models/student_model.dart';
import 'package:crud_op_f_base/screens/add_student.dart';
import 'package:crud_op_f_base/screens/update_student.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Student> student = [
    Student(id: "id", rollno: 3, name: "name 1", marks: 30),
    Student(id: "id", rollno: 5, name: "name 2", marks: 60),
    Student(id: "id", rollno: 8, name: "name 3", marks: 80)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: student.isEmpty
          ? const Center(
              child: Text("no student yet\nClick + to start adding"),
            )
          : ListView.builder(
              itemCount: student.length,
              itemBuilder: (context, index) {
                return Card(
                  color: student[index].marks < 33
                      ? Colors.red
                      : student[index].marks < 65
                          ? Colors.yellow
                          : Colors.green,
                  child: ListTile(
                    title: Text("Name: ${student[index].name}"),
                    subtitle: Text("Roll No.: ${student[index].rollno}"),
                    leading: CircleAvatar(
                      child: Text(student[index].marks.toString()),
                    ),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        UpdateStudents(student: student[index]),
                                  ));
                            },
                            icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete)),
                      ]),
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddStudent(),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
