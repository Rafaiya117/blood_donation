import 'package:blood_donation/core/bottom_navbar/bottom_navbar.dart';
import 'package:blood_donation/core/theme.dart';
import 'package:blood_donation/features/pages/feed_page/custom_widget/custom_select_blood.dart';
import 'package:blood_donation/features/pages/find_donor/custom_widget/blood_type.dart';
import 'package:blood_donation/features/pages/find_donor/custom_widget/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectBloodType extends StatefulWidget {
  const SelectBloodType({super.key});

  @override
  State<SelectBloodType> createState() => _SelectBloodTypeState();
}

class _SelectBloodTypeState extends State<SelectBloodType> {
  final bloodGroups = ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"];
  String? selectedGroup;
  int _selectedIndex = 0;
    void _onNavTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              SizedBox(width: 110,),
              Text(
                "Find Donor",
                style:GoogleFonts.inriaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  letterSpacing: -0.5,
                ),
              ),
              SizedBox(width: 110),
              Icon(
                Icons.notifications_outlined,
              ),
            ],
          ),
        ),
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose your Blood type",
                  style: GoogleFonts.inriaSans(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: bloodGroups.map((group) {
                    return BloodGroupTile(
                      label: group,
                      isSelected: selectedGroup == group,
                      onTap: () {
                        setState(() {
                          selectedGroup = group;
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Blood Unit Needed",
                      style:GoogleFonts.inriaSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(width: 210),
                  CustomDropdownButton(
                    items: ['1', '2', '3', '4', '5', '6'],
                    initialValue: '4',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                ],
              ),
              SizedBox(height: 80),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter your location"
                ),
              ),
              SizedBox(height: 20),
              BloodGroupSelectorTile(
                title: "Select your location",
                onTap: (){},
                iconColor: Colors.blue,
              ),
              SizedBox(height: 20),
              ElevatedButton(
              onPressed: () {
                context.push('/find_donor');
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
                  "Find Donor",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                  ),
                ),
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