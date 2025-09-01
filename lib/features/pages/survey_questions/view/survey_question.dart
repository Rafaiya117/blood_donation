import 'package:blood_donation/core/theme.dart';
import 'package:blood_donation/features/pages/survey_questions/custom_widget/custom_dropdown_widget.dart';
import 'package:blood_donation/features/pages/survey_questions/custom_widget/custom_survey_question.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SurveyQuestionsPage extends StatefulWidget {
  const SurveyQuestionsPage({super.key});

  @override
  State<SurveyQuestionsPage> createState() => _SurveyQuestionsPageState();
}

class _SurveyQuestionsPageState extends State<SurveyQuestionsPage> {
  String? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Quick Eligibily Check",
                style: GoogleFonts.inriaSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            ClipOval(
              child: Image.network(
                'https://eliteadmin.themedesigner.in/demos/bt4/university/dist/images/users/11.jpg',
                width: 70, 
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            CustomDropdown(
              question: "What is your blood group?",
              options: ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"],
              onChanged: (value) {
                print("Selected: $value");
              },
            ),
            SizedBox(height: 10),
            CustomRadioGroup(
              question: "Have you donated blood in the past 3 months?",
              options: ["Yes", "No", "Never Donate"],
              onChanged: (value) {
                print("Selected: $value");
              },
            ),
            SizedBox(height: 10),
            CustomRadioGroup(
              question: "Do you wieght more than 50kg?",
              options: ["Yes", "No"],
              onChanged: (value) {
                print("Selected: $value");
              },
            ),
            SizedBox(height: 10),
            CustomRadioGroup(
              question: "Are you between 18 to 60 years?",
              options: ["Yes", "No"],
              onChanged: (value) {
                print("Selected: $value");
              },
            ),
            CustomRadioGroup(
              question: "Are you currently on any medication or treatment?",
              options: ["Yes", "No"],
              onChanged: (value) {
                print("Selected: $value");
              },
            ),
            CustomRadioGroup(
              question: "Are you Smoker?",
              options: ["Yes", "No"],
              onChanged: (value) {
                print("Selected: $value");
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.push('/feed_page');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColors,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: Container(
                width: 200,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
