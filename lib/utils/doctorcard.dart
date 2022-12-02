import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_ui/newbox.dart';

class DoctorCard extends StatelessWidget {
  final imagepath;
  final String rating;
  final String name;
  final String title;
  final String exp;

  const DoctorCard({
    super.key,
    required this.imagepath,
    required this.rating,
    required this.name,
    required this.title,
    required this.exp,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: NewBox(
        child: Container(
          height: 70,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[200],
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Image.asset(
                    'lib/images/doctor1.jpg',
                    height: 20,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                height: 20,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        rating,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      exp,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
