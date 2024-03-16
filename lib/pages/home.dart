import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_navigation/pages/Modal.dart';

const todos = [
  "Buy Groceries",
  "Pay Bills",
  "Call Mom",
  "Meeting with Team",
  "Go for a walk",
  "Read a book",
  "Watch a movie",
  "Cook Dinner",
  "Go to Gym",
  "Plan a trip",
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> isCheckedList = List.filled(todos.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Todo Manager",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 50),
        child: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 40,
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                    value: isCheckedList[index],
                    onChanged: (value) {
                      setState(() {
                        isCheckedList[index] = value ?? false;
                      });
                    },
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        todos[index],
                        style: TextStyle(
                          fontSize: 16,
                          decoration: isCheckedList[index]
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        onPressed: () {
          showModal(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
