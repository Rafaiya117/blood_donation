import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), 
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios),
                ), 
                SizedBox(width: 300,),
                GestureDetector(onTap: () {}, child: Text("Skip")),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 250.0, horizontal: 58.0),
          child: Column(
            children: [
              Text(
                "Choose Wich one you need",
                style: GoogleFonts.inriaSans(
                  fontSize: 15.35,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1E1A17),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(
                    width: 142,
                    height: 142,
                    child: GestureDetector(
                      onTap: () {
                        print("Card tapped!");
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          width: 95,
                          height: 88,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey, width: 1.5),
                            boxShadow: [
                              BoxShadow(
                                // ignore: deprecated_member_use
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: Offset(-4, 4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/donate.png',
                                    fit: BoxFit.contain,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Finder",
                                      style: GoogleFonts.inriaSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1E1A17),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 142,
                    height: 142,
                    child: GestureDetector(
                      onTap: () {
                        context.push('/survey_page');
                        //print("Card tapped!");
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          width: 95,
                          height: 88,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey, width: 1.5),
                            boxShadow: [
                              BoxShadow(
                                // ignore: deprecated_member_use
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: Offset(-4, 4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/need-blood.png',
                                    fit: BoxFit.contain,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Doner",
                                      style: GoogleFonts.inriaSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1E1A17),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}