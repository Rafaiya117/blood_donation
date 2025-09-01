import 'package:flutter/material.dart';

class CustomRadioGroup extends StatefulWidget {
  final String question;
  final List<String> options;
  final ValueChanged<String> onChanged;

  const CustomRadioGroup({
    Key? key,
    required this.question,
    required this.options,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomRadioGroup> createState() => _CustomRadioGroupState();
}

class _CustomRadioGroupState extends State<CustomRadioGroup> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        //borderRadius: BorderRadius.circular(6),
        side: const BorderSide(color: Colors.grey, width: 0.5),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left:12,top: 12, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Wrap(
              spacing: 55,
              runSpacing: 4,
              children: widget.options.map((option) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<String>(
                      value: option,
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                        widget.onChanged(value!);
                      },
                      visualDensity: VisualDensity.compact,
                    ),
                    Text(
                      option,
                      style: const TextStyle(fontSize: 13),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
