import 'package:blood_donation/features/auth/loginpage.dart';
import 'package:blood_donation/features/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(left: 15, top: 120, bottom: 25),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/screen3.png', height: 300,width:250,),
                  Text(
                    "Join Our team",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Join the life-saving chain",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index){
                      final inActive =  index == 0;
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: inActive ? 50:30,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: inActive? Color(0xFFff0000): Colors.grey[300]
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 120),
                  ElevatedButton(
                    onPressed: (){
                      context.push('/home');
                      //Navigator.push(context,MaterialPageRoute(builder: (context)=> SignUpPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFff0000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )
                    ),
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Sign-Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade500,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Log-In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
