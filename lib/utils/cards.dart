import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_ui/newbox.dart';

class CategoryCard extends StatelessWidget {
  final icon;
  final String name;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: NewBox(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  icon,
                  height: 40,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(name)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
