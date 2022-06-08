import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qizil/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  static const id="splash_page_id";
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  initTimer(){
    Timer(Duration(seconds: 3),()async{
        Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

   void initState(){
    super.initState();
    initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(61, 64, 76, 1),
      body: Container(
        margin: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width:double.infinity,
                      height: MediaQuery.of(context).size.height*0.1,
                      child: Center(child: Text("My Tasks",style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700,color: Colors.green.shade400,),)),
                    ),
                    Container(
                      child: Image.asset('assets/images/arabcha',color:  Colors.green.shade400,),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Image.asset('assets/images/kir_one.png',),

                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.14),
                    Container(
                       child: Image.asset("assets/images/chiziq.png",color: Color(0xffD50000),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.12,),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good",style: TextStyle(fontSize: 15,color: Colors.green.shade400,fontWeight: FontWeight.w700),),
                    Text("Consistancy",style: TextStyle(fontSize: 20,color: Colors.green.shade400,fontWeight: FontWeight.w800),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        focusColor: Colors.transparent,
        disabledElevation: 0,
        onPressed:null,
        child: Image.asset('assets/images/bakal.png',color: Colors.green.shade400,),
      ),
    );
  }
}
