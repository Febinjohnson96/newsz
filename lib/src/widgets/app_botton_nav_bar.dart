import 'dart:ui';

import 'package:flutter/material.dart';

class AppBottomNavbar extends StatelessWidget {
  const AppBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return _buildBlur(
          child: Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight*0.08,
            color: Colors.white.withOpacity(0.2),
          ),
        );
      }
    );
  }

  Widget _buildBlur(
    {required Widget child,
    double sigmaX =50,
    double sigmay =50,
    }
  )=>  ClipRRect(
    borderRadius: BorderRadius.zero,
    child: BackdropFilter(filter:ImageFilter.blur(sigmaX: sigmaX,sigmaY: sigmay) ,child: child,));
}
