import 'package:flutter/material.dart';

import 'data/colors.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(this.action, this.icon, this.tooltip, {super.key, this.color = AppColors.blueAccent});

  final void Function()? action;
  final IconData icon;
  final String tooltip;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: action,
      icon: Icon(icon),
      iconSize: 30,
      color: AppColors.white,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(84, 50),
        elevation: 10,
        shadowColor: Colors.black54,
      ),
      tooltip: tooltip,
    );
  }
}