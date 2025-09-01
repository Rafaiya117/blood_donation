import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String question;
  final List<String> options;
  final ValueChanged<String> onChanged;

  const CustomDropdown({
    Key? key,
    required this.question,
    required this.options,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black26),
          //borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: selectedValue,
                hint: const Text(
                  'Select your Blood Group',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ),
                items: widget.options.map((option) {
                  return DropdownMenuItem(
                    value: option,
                    child: Text(option, style: const TextStyle(fontSize: 13)),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                  widget.onChanged(value!);
                },
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  border: InputBorder.none, // ⬅️ Removed inner border
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
