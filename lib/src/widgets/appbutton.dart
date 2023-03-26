import 'package:flutter/material.dart';
import 'package:newsz/src/config/theme/appcolors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.btntitle,
    this.callback,
    this.inActiveColor,
    this.inActiveTextColor,
  }) : super(key: key);
  final String btntitle;
  final VoidCallback? callback;
  final Color? inActiveColor;
  final Color? inActiveTextColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        decoration: BoxDecoration(
            color: inActiveColor ?? redRibbon,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Text(
              btntitle,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: inActiveTextColor ?? Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
