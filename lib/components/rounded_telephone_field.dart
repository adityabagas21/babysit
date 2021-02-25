
import 'package:babysit_app/components/text_field_container.dart';
import 'package:babysit_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedTelephoneField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedTelephoneField({
    Key key,
    this.onChanged, this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon:
          Icon(Icons.add_call,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}