import 'package:blood_donation/core/bottom_navbar/bottom_navbar.dart';
import 'package:blood_donation/features/pages/find_donor/custom_widget/custom_donor_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindDonorRequest extends StatefulWidget {
  const FindDonorRequest({super.key});

  @override
  State<FindDonorRequest> createState() => _FindDonorRequestState();
}

class _FindDonorRequestState extends State<FindDonorRequest> {
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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              child: Column(
                children: [
                  DonorCard(
                    name: "Trisha",
                    hospital: "Abcd Hospital",
                    distance: "2 km",
                    bloodGroup: "B+",
                    profileImageUrl: "https://i.pravatar.cc/150?img=47",
                    isAvailable: true,
                    onSendRequest: () {
                      print("Send Request clicked!");
                    },
                  ),
                  SizedBox(height: 10),
                  DonorCard(
                    name: "Trisha",
                    hospital: "Abcd Hospital",
                    distance: "2 km",
                    bloodGroup: "B+",
                    profileImageUrl: "https://i.pravatar.cc/150?img=47",
                    isAvailable: true,
                    onSendRequest: () {
                      print("Send Request clicked!");
                    },
                  ),
                  SizedBox(height: 10),
                  DonorCard(
                    name: "Trisha",
                    hospital: "Abcd Hospital",
                    distance: "2 km",
                    bloodGroup: "B+",
                    profileImageUrl: "https://i.pravatar.cc/150?img=47",
                    isAvailable: true,
                    onSendRequest: () {
                      print("Send Request clicked!");
                    },
                  ),
                  SizedBox(height: 10),
                  DonorCard(
                    name: "Trisha",
                    hospital: "Abcd Hospital",
                    distance: "2 km",
                    bloodGroup: "B+",
                    profileImageUrl: "https://i.pravatar.cc/150?img=47",
                    isAvailable: true,
                    onSendRequest: () {
                      print("Send Request clicked!");
                    },
                  ),
                  SizedBox(height: 10),
                  DonorCard(
                    name: "Trisha",
                    hospital: "Abcd Hospital",
                    distance: "2 km",
                    bloodGroup: "B+",
                    profileImageUrl: "https://i.pravatar.cc/150?img=47",
                    isAvailable: true,
                    onSendRequest: () {
                      print("Send Request clicked!");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onNavTap,
      ),
    );
  }
}