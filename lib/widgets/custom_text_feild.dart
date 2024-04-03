import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class CustomTextFeild extends StatefulWidget {
  const CustomTextFeild(
      {super.key, required this.hint, required this.keyboardType});
  final String hint;
  final TextInputType keyboardType;

  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  bool isRTL = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        setState(() {
          isRTL = intl.Bidi.detectRtlDirectionality(value);
        });
      },
      textDirection: isRTL == false ? TextDirection.ltr : TextDirection.rtl,
      keyboardType: widget.keyboardType,
      maxLines: null,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: const TextStyle(
            color: Color.fromARGB(255, 199, 196, 196), fontSize: 20),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Colors.white),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
