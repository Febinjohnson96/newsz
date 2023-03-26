import 'package:flutter/material.dart';

class AppButtonWithIcon extends StatelessWidget {
  const AppButtonWithIcon({
    Key? key,
    required this.btntitle,
    required this.btnColor,
    required this.iconImagePath,
    this.callback,
    this.textColor,
  }) : super(key: key);
  final String btntitle;
  final Color btnColor;
  final Color? textColor;
  final String iconImagePath;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconImagePath,
                height: 40,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10,),
              Text(
                btntitle,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
