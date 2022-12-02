import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_ui/newbox.dart';
import 'package:medical_ui/utils/cards.dart';
import 'package:medical_ui/utils/doctorcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              // APP BAR
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 35,
                          width: 55,
                          child: NewBox(
                            child: Center(
                              child: Text(
                                'Hello,',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 45,
                          width: 110,
                          child: NewBox(
                            child: Center(
                              child: Text(
                                'Dennis Ogi',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      width: 60,
                      child: NewBox(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              // DOCTOR CARD
              SizedBox(
                height: 150,
                width: 1200,
                child: NewBox(
                  child: Container(
                    height: 150,
                    width: 1200,
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset(
                              'lib/icons/medicalteam.png',
                              height: 120,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200, top: 14),
                          child: Column(
                            children: [
                              const Text(
                                'How do you feel?',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Fill out your medical card right now',
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 45,
                                width: 100,
                                child: NewBox(
                                  child: Container(
                                    padding: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple[200],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Get Started',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),

              // TEXT FIELD
              SizedBox(
                width: 1200,
                child: NewBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'How can we help you?'),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 18,
              ),

              // HORIZONTAL CATEGORY LIST
              Container(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CategoryCard(
                        icon: 'lib/icons/dentist.png',
                        name: 'Doctor',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/dentist-tools.png',
                        name: 'Surgery',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/dentist-chair.png',
                        name: 'Nurse',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/healthcare.png',
                        name: 'Health',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/medicalhistory.png',
                        name: 'History',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/medicalreport.png',
                        name: 'Report',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/medicalsymbol.png',
                        name: 'Symbol',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/stethoscope.png',
                        name: 'Check-up',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/pills.png',
                        name: 'Pills',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/medicine.png',
                        name: 'Meds',
                      ),
                      CategoryCard(
                        icon: 'lib/icons/xray.png',
                        name: 'X-ray',
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // DOCTOR AND SEE ALL ROW
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Doctor list',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              // DOCTOR PROFILE
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  children: const [
                    DoctorCard(
                      imagepath: 'lib/images/doctor1.jpg',
                      rating: '4.9',
                      name: 'Dr Dennis Ogi',
                      title: 'Surgeon',
                      exp: '7 y.e',
                    ),
                    DoctorCard(
                      imagepath: 'lib/images/doctor1.jpg',
                      rating: '4.9',
                      name: 'Dr Dennis Ogi',
                      title: 'Surgeon',
                      exp: '7 y.e',
                    ),
                    DoctorCard(
                      imagepath: 'lib/images/doctor1.jpg',
                      rating: '4.9',
                      name: 'Dr Dennis Ogi',
                      title: 'Surgeon',
                      exp: '7 y.e',
                    ),
                    DoctorCard(
                      imagepath: 'lib/images/doctor1.jpg',
                      rating: '4.9',
                      name: 'Dr Dennis Ogi',
                      title: 'Surgeon',
                      exp: '7 y.e',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
