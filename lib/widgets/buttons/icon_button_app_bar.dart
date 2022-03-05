import 'package:flutter/material.dart';

class IconButtonAppBar extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String? tooltip;
  final bool isFontAwesomeIcon;

  const IconButtonAppBar({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.tooltip,
    this.isFontAwesomeIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(0),
      splashRadius: 23,
      splashColor: Theme.of(context).colorScheme.secondary,
      tooltip: tooltip,
      icon: Icon(icon, color: Theme.of(context).colorScheme.primary, size: isFontAwesomeIcon ? 17 : 23),
      onPressed: () => onPressed(),
    );
  }
}
