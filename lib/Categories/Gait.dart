import 'package:flutter/material.dart';

class GaitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF6E9), // Light greenish background
      appBar: AppBar(
        title: Text("Gait and Walking Rehabilitation"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Gait and Walking Rehabilitation",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              "Exercises to improve walking patterns and mobility",
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Exercise Cards in separate rows
            _buildExerciseCard(
              context,
              title: "Tandem Walking",
              description: "Walking heel-to-toe to improve balance, coordination, and proprioception.",
              imagePath: "assets/walking.png",
            ),
            SizedBox(height: 10),
            _buildExerciseCard(
              context,
              title: "Step and Hold",
              description: "Enhances balance and control by pausing briefly after each step.",
              imagePath: "assets/gait-exercise.jpg",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseCard(BuildContext context, {required String title, required String description, required String imagePath}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150, // Fixed height to prevent large image distortion
              child: Image.asset(imagePath, fit: BoxFit.contain), // Ensures no cropping
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
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "Intermediate",
                    style: TextStyle(fontSize: 12, color: Colors.green[800]),
                  ),
                ),
                Text(
                  "10-15 mins",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
