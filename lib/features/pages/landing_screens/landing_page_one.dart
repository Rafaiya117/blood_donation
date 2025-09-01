import 'package:blood_donation/core/theme.dart';
import 'package:blood_donation/features/pages/landing_screens/landing_page_two.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageOne extends StatelessWidget {
  const LandingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(left: 16, right: 16, top:200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
              'assets/images/screen1.png',
              width: 165,
              height: 165,
              ),
              SizedBox(height: 10,),
              Text(
                "Donate Blood",
                style:GoogleFonts.inriaSans(
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondColor,
                  fontSize: 32
                ),
              ),
              SizedBox(height: 6,),
              Text.rich(
                TextSpan(
                  style:GoogleFonts.inriaSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: AppColors.secondColor,
                  ),
                  children:[
                    TextSpan(
                      text: "Your donation can save many\n"),
                    TextSpan(
                      text: "lives ",
                      style: GoogleFonts.inriaSans(
                        color: AppColors.secondColor
                      ),
                    ),
                    TextSpan(
                      text: "make a difference",
                      style: GoogleFonts.inriaSans(
                        color: AppColors.secondColor
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
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
                          color: inActive? AppColors.buttonColors: Colors.grey[300]
                        ),
                      );
                    }
                  ),
                ),
                SizedBox(height: 290,),
                ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LandingPageTwo()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonColors,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Container(
                  width: 200,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
