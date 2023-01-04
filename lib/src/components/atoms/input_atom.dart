// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InputAtomWidget extends StatefulWidget {
  final TextEditingController? fieldController;
  final String hintText;
  final bool isObscureText;
  final Function(String?)? onChanged;

  const InputAtomWidget({
    Key? key,
    required this.fieldController,
    required this.hintText,
    required this.isObscureText,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<InputAtomWidget> createState() => _InputAtomWidgetState();
}

class _InputAtomWidgetState extends State<InputAtomWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 158, 158, 158),
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        hintText: widget.hintText,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(64, 158, 158, 158),
            width: 1.5,
          ),
        ),
      ),
      obscureText: widget.isObscureText,
      controller: widget.fieldController,
      onChanged: widget.onChanged,
    );
  }
}
