import 'package:doctor_app/util/category_card.dart';
import 'package:doctor_app/util/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Салам,',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          SizedBox(height: 8),
                          Text('Maksatbek ZHAKYPOV',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(Icons.person)),
                    ])),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(14)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple[200],
                      child: Lottie.network(
                          'https://assets2.lottiefiles.com/packages/lf20_tutvdkg0.json'),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Өзүңдү кандай сезип жатасың?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          const SizedBox(height: 12),
                          const Text('Медициналык картаңызды азыр толтуруңуз',
                              style: TextStyle(fontSize: 14)),
                          const SizedBox(height: 12),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                              child: Text('Өздук маалыматты толтур',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),

            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'Кандай жардам керек?'),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Horizntal listview -> categories: dentist, surgeon etc...

            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                      categoryName: 'Тиш',
                      iconImagePath: "lib/icons/tooth.png"),
                  CategoryCard(
                      categoryName: 'Даарылар',
                      iconImagePath: "lib/icons/medicine.png"),
                  CategoryCard(
                      categoryName: 'Врачтар',
                      iconImagePath: "lib/icons/surgeon.png"),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // Doctor list

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Докторлордун тизмеси',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'Баарын көрүү',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DoctorCard(
                    doctorImagePath: 'lib/images/doctor1.jpg',
                    rating: '4.9',
                    doctorName: 'Др.Султан Таштанбаев',
                    doctorProfession: 'Реаниматолог, 12-ж'),
                DoctorCard(
                    doctorImagePath: 'lib/images/doctor4.jpg',
                    rating: '4.8',
                    doctorName: 'Др.Сулайман Таштанбаев',
                    doctorProfession: 'Травматолог, 10-ж'),
                DoctorCard(
                    doctorImagePath: 'lib/images/doctor2.jpg',
                    rating: '4.9',
                    doctorName: 'Др.Султан Таштанбаев',
                    doctorProfession: 'Анестезиолог, 12-ж'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
