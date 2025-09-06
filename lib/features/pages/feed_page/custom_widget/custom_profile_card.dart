import 'package:blood_donation/core/theme.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String location;
  final String distance;
  final String profileImage;
  final Color borderColor;
  final double borderRadius;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.location,
    required this.distance,
    required this.profileImage,
    this.borderColor = const Color.fromARGB(255, 241, 37, 37),
    this.borderRadius = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        border: Border.all(color: borderColor.withOpacity(0.5)),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: const Color.fromARGB(255,224,133,133,).withOpacity(0.2), 
            spreadRadius: 6,
            blurRadius: 6,
            offset: const Offset(0, 4), 
          ),
        ],
        color: Colors.white, 
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              profileImage,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.bloodtype,  
                color: AppColors.buttonColors,
                size: 18,
              ),
              const SizedBox(width: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.buttonColors,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  distance,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
