import 'package:flutter/material.dart';

class RecoveryPathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF6E9), // Light greenish background
      appBar: AppBar(
        title: Text("Recovery Path"),
        backgroundColor: Colors.green[700], // Dark green app bar
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Enable vertical scrolling
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose Your Recovery Path",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Select a category that matches your rehabilitation needs",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 20),

              // List of Recovery Cards
              Column(
                children: [
                  _buildRecoveryCard(
                    context,
                    "Gait And Walking",
                    "To improve walking patterns and mobility for safer, more comfortable movement.",
                    "assets/gait_disorders.jpg",
                  ),
                  _buildRecoveryCard(
                    context,
                    "Balance And Posture Correction",
                    "Focuses on stability and alignment to prevent falls and improve posture.",
                    "assets/wrong_posture.png",
                  ),
                  _buildRecoveryCard(
                    context,
                    "Flexibility And Range Of Motion",
                    "Exercises to enhance joint mobility and ease of movement.",
                    "assets/medical-rehabilitation-physical-therapy-activities-physiotherapist-working-patients-cartoon-vector-illustration-white-95502853.jpg.webp",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecoveryCard(BuildContext context, String title, String description, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      margin: EdgeInsets.only(bottom: 16), // Add spacing between cards
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imagePath, height: 150, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green[700]),
            ),
            SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green[600]),
              onPressed: () {
                // Handle button press
              },
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
