import 'package:blood_donation/core/bottom_navbar/bottom_navbar.dart';
import 'package:blood_donation/core/theme.dart';
import 'package:blood_donation/features/pages/feed_page/custom_widget/custom_profile_card.dart';
import 'package:blood_donation/features/pages/feed_page/custom_widget/custom_select_blood.dart';
import 'package:blood_donation/features/pages/feed_page/custom_widget/custome_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onNavTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://eliteadmin.themedesigner.in/demos/bt4/university/dist/images/users/11.jpg',
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hi, Rafaiya\n',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black, 
                            fontSize: 16,
                            letterSpacing: -0.5,
                          ),
                        ),
                        TextSpan(
                          text: 'Are you looking for donor?',
                          style: TextStyle(color: Colors.black, fontSize: 16,letterSpacing: -0.5,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 100),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.notifications_outlined),
                  ),
                ],
              ),
              SizedBox(height: 20),
              BloodGroupSelectorTile(
                title: 'Select your Blood Group',
                iconColor: Colors.blue,
                onTap: () {
                  // Open dropdown
                },
              ),
             SizedBox(height: 10),
             BloodGroupSelectorTile(
                onTap: (){},
                iconColor: Colors.blue,
              ),
              SizedBox(height: 20),
              ElevatedButton(
              onPressed: () {
                context.push('/blood_type');
                // context.push('/feed_page');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColors,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: Container(
                width: 200,
                padding: EdgeInsets.all(4.0),
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconCard(
                    icon: Image.asset('assets/images/find.png'),
                    text: 'Find Donor',
                    iconSize: 64.0,
                    borderColor: AppColors.buttonColors,
                    borderRadius: 10.0,
                  ),
                  SizedBox(width: 20),
                CustomIconCard(
                    icon: Image.asset('assets/images/test_blood.png'),
                    text: 'Test Blood',
                    iconSize: 64.0,
                    borderColor: AppColors.buttonColors,
                    borderRadius: 10.0,
                  ),
                  SizedBox(width: 20),
                CustomIconCard(
                    icon: Image.asset('assets/images/bank.png'),
                    text: 'Donor Bank',
                    iconSize: 64.0,
                    borderColor: AppColors.buttonColors,
                    borderRadius: 10.0,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Donation Request",
                    style: GoogleFonts.inriaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 200),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                    "See All",
                    style: GoogleFonts.inriaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              ProfileCard(
                name: 'Trisha',
                location: 'Abcd Hospital',
                distance: '3km',
                profileImage:'https://www.w3schools.com/w3images/avatar2.png', 
              ),
              SizedBox(height: 20),
              ProfileCard(
                name: 'Trisha',
                location: 'Abcd Hospital',
                distance: '3km',
                profileImage:'https://www.w3schools.com/w3images/avatar2.png', 
              ),
              SizedBox(height: 20),
              ProfileCard(
                name: 'Trisha',
                location: 'Abcd Hospital',
                distance: '3km',
                profileImage:'https://www.w3schools.com/w3images/avatar2.png', 
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onNavTap,
      ),
    );
  }
}