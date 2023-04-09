import 'package:flutter/material.dart';
import 'package:newsz/src/config/theme/appcolors.dart';

class CategoryButton extends StatefulWidget {
  const CategoryButton({
    Key? key,
    required this.isSelected,
    required this.title,
    this.callback,
  }) : super(key: key);

  final bool isSelected;
  final String title;
  final VoidCallback? callback;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
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
              color: widget.isSelected ? blueVogue : Colors.transparent,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: widget.isSelected ? Colors.white : blueVogue),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
