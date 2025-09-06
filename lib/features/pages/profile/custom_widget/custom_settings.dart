import 'package:blood_donation/core/theme.dart';
import 'package:flutter/material.dart';
// Define a model for each setting option
class SettingOption {
  final String title;
  final bool initialValue;
  final ValueChanged<bool> onChanged;
  final bool isSwitch;
  final Function()? onTap;

  SettingOption({
    required this.title,
    required this.initialValue,
    required this.onChanged,
    this.isSwitch = false,
    this.onTap,
  });
}

class SettingsList extends StatefulWidget {
  final List<SettingOption> settings;

  SettingsList({required this.settings});

  @override
  _SettingsListState createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  late List<bool> switchValues;

  @override
  void initState() {
    super.initState();
    switchValues = widget.settings
        .where((setting) => setting.isSwitch)
        .map((setting) => setting.initialValue)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: widget.settings.map((setting) {
        int index = widget.settings.indexOf(setting); 
        return ListTile(
          title: Text(setting.title),
          trailing: setting.isSwitch
              ? Switch(
                  value: switchValues[index], 
                  activeColor: AppColors.firstColor,
                  onChanged: (value) {
                    setState(() {
                      switchValues[index] = value; 
                    });
                    setting.onChanged(value); 
                  },
                )
              : Icon(Icons.arrow_forward_ios),
          onTap: setting.onTap,
        );
      }).toList(),
    );
  }
}
