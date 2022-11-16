import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard(
      {Key? key,
      required this.doctorImagePath,
      required this.rating,
      required this.doctorName,
      required this.doctorProfession})
      : super(key: key);
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          children: [
            // picture of doctors

            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(doctorImagePath, height: 100)),
            const SizedBox(height: 10),

            // rating out of 5

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                  ),
                  Text(rating,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // doctor name
            Text(
              doctorName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            const SizedBox(height: 5),

            //doctor title

            Text(doctorProfession)
          ],
        ),
      ),
    );
  }
}
