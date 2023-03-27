import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/search.dart';
import 'package:projeto/user.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height * 0.3;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Página Inicial",
          style: TextStyle(
            fontSize: 26,
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
                child: Text(
                  "Funcionários da Semana:",
                  style: GoogleFonts.amiko(
                    fontSize: 20,
                    
                  )
                ),
                
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 180.0,
                    margin: EdgeInsets.only(top: 20, right: 20),
                    width: 123.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 163, 163, 163),
                          Color.fromARGB(255, 85, 85, 85),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft
                      )
                    ),
                  ),
        
                  Container(
                    height: 180.0,
                    margin: EdgeInsets.only(top: 20, right: 20),
                    width: 123.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 163, 163, 163),
                          Color.fromARGB(255, 85, 85, 85),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft
                      )
                    ),
                  ),
        
                  Container(
                    height: 180.0,
                    margin: EdgeInsets.only(top: 20, right: 20),
                    width: 123.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 163, 163, 163),
                          Color.fromARGB(255, 85, 85, 85),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft
                      )
                    ),
                  ),
                ],
              ),
        
              Column(
                children: [
                  const Divider(
                    color: Colors.grey,
                  )
                ],
              ),
        
              SingleChildScrollView(
                child: Container(
                  height: 400.0,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 163, 163, 163),
                        Color.fromARGB(255, 131, 129, 129),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft
                    )
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children:[
                      Container(
                        margin: EdgeInsets.all(15),
                        height: 200.0,
                        width: 300.0,
                        color: Colors.white,
                      ),
                      
                      SingleChildScrollView(
                        child: Container(
                          child: Text(
                            "DESCRIÇÃO DO PROJETO APRESENTADO:",
                            style: GoogleFonts.anekBangla(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200.0,
                        margin: EdgeInsets.only(top: 20),
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.only(top: 20, bottom: 20)),
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.image),
                          label: Text(
                            "Candidatar-se",
                            style: GoogleFonts.amiko(
                              fontSize: 18
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  
                      
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
                child: Icon(Icons.account_circle, color: Colors.blue, size: 40,)
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
              },
              child: Container(
                child: Icon(Icons.home_rounded, color: Colors.blue, size: 40,),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MySearch()));
              },
              child: Container(
                child: Icon(Icons.search, color: Colors.blue, size: 40,),
              ),
            ),
          ],
        )
            ],
          ),
          
        ),
      )
    );
    
  }
}