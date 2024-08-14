import 'package:flutter/material.dart';

class MobileCustomAppBar extends StatelessWidget {
  const MobileCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Kan",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            "Khamkoonmuang",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
