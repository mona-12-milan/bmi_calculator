import 'package:flutter/material.dart';
import 'constants.dart';

class InsertContainer extends StatelessWidget {
  const InsertContainer({required this.color, this.child, this.onTap});
  final Color color;
  final Widget? child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
