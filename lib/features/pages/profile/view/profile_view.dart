import 'package:blood_donation/features/pages/profile/custom_widget/custom_appbar.dart';
import 'package:blood_donation/features/pages/profile/custom_widget/custom_settings.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        name: "Trisha",
        phone: "01859823558",
        lifeSaver: "2",
        bloodGroup: "AB+",
        nextDonation: "22 July",
        profileImageUrl: "assets/images/appbar.png", 
      ),
      body: SettingsList(
      settings: [
        SettingOption(
          title: 'Available to donate',
          initialValue: false,
          onChanged: (value) {
            print('Available to donate: $value');
          },
          isSwitch: true,
        ),
        SettingOption(
          title: 'Notification',
          initialValue: true,
          onChanged: (value) {
            print('Notification: $value');
          },
          isSwitch: true,
        ),
        SettingOption(
          title: 'Allow Tracking',
          initialValue: true,
          onChanged: (value) {
            print('Allow Tracking: $value');
          },
          isSwitch: true,
        ),
        SettingOption(
          title: 'Manage Address',
          initialValue: false,
          onTap: () {
            // Handle Manage Address tap
          }, 
          onChanged: (bool value) {  },
        ),
        SettingOption(
          title: 'History',
          initialValue: false,
          onTap: () {
            // Handle History tap
          }, 
          onChanged: (bool value) {  },
        ),
        SettingOption(
          title: 'Contact Details',
          initialValue: false,
          onTap: () {
            // Handle Contact Details tap
          }, 
          onChanged: (bool value) {  },
        ),
        SettingOption(
          title: 'Logout',
          initialValue: false,
          onTap: () {
            // Handle Logout tap
          }, 
          onChanged: (bool value) {  },
        ),
      ],
    ),
    );
  }
}