import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto/home.dart';
import 'package:projeto/search.dart';

class MyUser extends StatefulWidget {
  const MyUser({super.key});

  @override
  State<MyUser> createState() => _MyUserState();
}

class _MyUserState extends State<MyUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Usuário",
          style: TextStyle(
            fontSize: 26
          )
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Icon(Icons.account_circle, size: 80, color: Colors.lightBlue,),
                margin: EdgeInsets.only(),
              ),
              Container(
                height: 380.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 118, 200, 255),
                        Color.fromARGB(255, 117, 143, 255),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft
                  ),
                ),
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:30, left: 30, right: 20),
                      child: Text(
                        " Nome: (Nome do usuário) \n\n Sexo: (Sexo do usuário) \n\n Idade: (Idade do usuário) \n\n Celular: (celular do usuário) \n\n Email: (Email do usuário) \n\n Descriçaõ do usuário: \n\n Trabalhos realizados: \n\n Trabalhos solicitados:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const Divider(
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyUser()));
                    },
                    child: Container(
                      child: Icon(Icons.account_circle, color: Colors.blue, size: 40),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
                    },
                    child: Container(
                      child: Icon(Icons.home, color: Colors.blue, size: 40),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MySearch()));
                    },
                    child: Container(
                      child: Icon(Icons.search, color: Colors.blue, size: 40),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}