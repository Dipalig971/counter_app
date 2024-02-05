import 'package:flutter/material.dart';

void main() {
  runApp(const counter());
}

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),

        body: Center(
          child: Text("$count",style: TextStyle(fontSize: 50),),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              count++;
              print("$count");
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
int count=0;













