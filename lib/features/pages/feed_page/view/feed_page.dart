import 'package:blood_donation/core/bottom_navbar/bottom_navbar.dart';
import 'package:blood_donation/features/pages/feed_page/custom_widget/custom_select_blood.dart';
import 'package:flutter/material.dart';

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
                  Text(
                    "Hi, Rafaiya\nAre you looking for donor?",
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
                onTap: (){},
             ),
             SizedBox(height: 10),
             BloodGroupSelectorTile(
                onTap: (){},
                iconColor: Colors.blue,
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