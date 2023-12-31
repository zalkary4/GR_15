import 'dart:developer';

import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.icon,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  final IconData icon;
  final String text;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: const Color(0xff010120),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Icon(
              icon,
              size: 120,
              color:
                  isActive ? const Color(0xffff1065) : const Color(0xffceccd2),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 26,
                color: isActive
                    ? const Color(0xffff1065)
                    : const Color(0xffceccd2),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
