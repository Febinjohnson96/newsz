import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {Key? key,
      required this.isPassword,
      required this.label,
      required this.textController,
      this.callback,
      this.icon})
      : super(key: key);
  final bool isPassword;
  final String label;
  final TextEditingController textController;
  final void Function(bool isPassWordNotVisible)? callback;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      obscureText: isPassword,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: ()=>callback?.call(!isPassword),
              icon: FaIcon(
                icon,
                size: 18,
              )),
          hintText: label,
          hintStyle: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontWeight: FontWeight.w600, color: Colors.grey)),
    );
  }
}
