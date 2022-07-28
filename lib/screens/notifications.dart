// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 35,
              child: Text('¿Que hay de nuevo?', 
              style: GoogleFonts.roboto(
                fontSize: 30,
                fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          SizedBox(height: 10,),
          //details
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(child: Text(
              "Aquí puedes ver los últimos avisos", 
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),),
          ),
          SizedBox(height: 35,),
          //gato anim
          Center(
            child: Container(
              height: 300,
              child: Lottie.asset('assets/anim/99955-empty-notifications.json'),
            ),
          ),
          //no hay noti
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Container(
                height: 40,
                child: Text('¡Shh! nada que ver por aquí', 
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w500,),
                  ),
              ),
            ),
          )
        ],
      ),
    );  

    
  }
}