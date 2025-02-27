import 'package:flutter/material.dart';

class BalancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF6E9), // Light greenish background
      appBar: AppBar(
        // title: Text("Balance and Posture"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Balance and Posture Rehabilitation",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                "Exercises to improve stability, alignment, and prevent falls",
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Exercises in separate rows
              _buildExerciseCard(
                title: "Single Leg Stand (Sideways)",
                description: "Improves balance, stability, and proprioception (awareness of body position).",
                imagePath: "assets/Single_leg_bal.png",
                duration: "30-60 secs",
              ),
              _buildExerciseCard(
                title: "Single Leg Stand (Front)",
                description: "Improves balance, stability, and proprioception (awareness of body position).",
                imagePath: "assets/RT012-01.jpg",
                duration: "30-60 secs",
              ),
              _buildExerciseCard(
                title: "Arm Raise",
                description: "Improve shoulder strength and mobility",
                imagePath: "assets/double_arm.png",
                duration: "15-20 reps",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExerciseCard({
    required String title,
    required String description,
    required String imagePath,
    required String duration,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      margin: EdgeInsets.only(bottom: 16), // Adds spacing between rows
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Ensures image doesn't crop and scales properly
            ClipRRect(
              borderRadius: BorderRadius.circular(12), // Optional: Rounded image corners
              child: Image.asset(
                imagePath,
                height: 180, // Increased height for better visibility
                width: double.infinity,
                fit: BoxFit.contain, // Ensures full image is shown
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green[700]),
            ),
            SizedBox(height: 5),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "Beginner",
                    style: TextStyle(fontSize: 14, color: Colors.green[800]),
                  ),
                ),
                Text(
                  duration,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
