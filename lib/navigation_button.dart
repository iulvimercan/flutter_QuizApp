import 'package:flutter/material.dart';

import 'colors.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(this.action, this.icon, this.tooltip, {super.key});

  final void Function()? action;
  final IconData icon;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: action,
      icon: Icon(icon),
      iconSize: 30,
      color: AppColors.white,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blueAccent,
        minimumSize: const Size(84, 50),
        elevation: 10,
        shadowColor: Colors.black54,
      ),
      tooltip: tooltip,
    );
  }
}