import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto/home.dart';
import 'package:projeto/user.dart';

class MySearch extends StatefulWidget {
  const MySearch({super.key});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pesquisa",
          style: TextStyle(
            fontSize: 26
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.search),
                  ),
                  readOnly: false,
                  onTap: () {},
                  cursorColor: Colors.grey,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}