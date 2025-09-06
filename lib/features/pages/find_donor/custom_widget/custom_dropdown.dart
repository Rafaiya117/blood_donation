import 'package:blood_donation/core/theme.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<String> items;
  final String initialValue;
  final ValueChanged<String> onChanged;

  const CustomDropdownButton({
    required this.items,
    required this.initialValue,
    required this.onChanged,
    super.key,
  });

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.buttonColors,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          dropdownColor: AppColors.buttonColors,
          style: const TextStyle(color: Colors.white, fontSize: 18),
          onChanged: (value) {
            if (value != null) {
              setState(() => selectedValue = value);
              widget.onChanged(value);
            }
          },
          items: widget.items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
