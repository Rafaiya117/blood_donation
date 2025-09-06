import 'package:flutter/material.dart';

class BloodGroupSelectorTile extends StatelessWidget {
  final VoidCallback onTap;
  final Color iconColor;
  final String title;

  const BloodGroupSelectorTile({
    Key? key,
    required this.onTap,
    this.iconColor = Colors.red,
    this.title = 'Select your Blood Group',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.red.shade100),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.bloodtype_outlined,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
