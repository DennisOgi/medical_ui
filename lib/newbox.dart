import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewBox extends StatelessWidget {
  final child;

  const NewBox({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      child: child,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5.0, 5.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
            color: Colors.grey.shade500,
          ),
          const BoxShadow(
            offset: Offset(-5.0, -5.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
