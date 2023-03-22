import 'package:flutter/material.dart';
import 'package:newsz/src/config/theme/appcolors.dart';

class ViewChangebutton extends StatefulWidget {
  const ViewChangebutton({
    Key? key,
    required this.buttonTitle,
    required this.isSelected,
    this.callback,
  }) : super(key: key);
  final String buttonTitle;
  final bool isSelected;
  final VoidCallback? callback;

  @override
  State<ViewChangebutton> createState() => _ViewChangebuttonState();
}

class _ViewChangebuttonState extends State<ViewChangebutton> {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails tapEvent) {
        setState(() {
          isButtonPressed = true;
        });
      },
      onTapCancel: () {
        setState(() {
          isButtonPressed = false;
        });
      },
      onTapUp: (TapUpDetails tapEvent) {
        setState(() {
          isButtonPressed = false;
        });
        widget.callback?.call();
      },
      child: Transform.scale(
        scale: isButtonPressed ? 0.9 : 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.isSelected ? blueVogue : Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
                child: Text(
              widget.buttonTitle,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: widget.isSelected ? Colors.white : blueVogue,
                    fontWeight: FontWeight.w600,
                  ),
            )),
          ),
        ),
      ),
    );
  }
}
