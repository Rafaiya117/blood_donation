import 'package:blood_donation/core/theme.dart';
import 'package:flutter/material.dart';

class DonorCard extends StatelessWidget {
  final String name;
  final String hospital;
  final String distance;
  final String bloodGroup;
  final String profileImageUrl;
  final bool isAvailable;
  final VoidCallback onSendRequest;

  const DonorCard({
    Key? key,
    required this.name,
    required this.hospital,
    required this.distance,
    required this.bloodGroup,
    required this.profileImageUrl,
    required this.isAvailable,
    required this.onSendRequest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: const Color.fromARGB(255, 228, 67, 67).withOpacity(0.15), 
            offset: const Offset(0, -3),
            blurRadius: 6, 
            spreadRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(profileImageUrl),
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
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        hospital,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  distance,
                  style: const TextStyle(fontSize: 13, color: Colors.black45),
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        isAvailable ? "Available" : "Unavailable",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: isAvailable
                            ? Colors.green
                            : AppColors.buttonColors,
                          ),
                        ),
                      ),
                    const SizedBox(height: 8),
                    const Icon(Icons.bloodtype, color: AppColors.buttonColors),
                    // Text(
                    //   bloodGroup,
                    //   style: const TextStyle(
                    //     fontSize: 13,
                    //     fontWeight: FontWeight.bold,
                    //     color: AppColors.buttonColors,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Material(
              color: AppColors.buttonColors,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: InkWell(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                onTap: onSendRequest,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Center(
                    child: Text(
                      "Send Request",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
