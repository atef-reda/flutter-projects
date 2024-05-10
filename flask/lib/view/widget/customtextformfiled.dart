import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormFilled extends StatelessWidget {
  CustomTextFormFilled({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  });
  TextEditingController? controller;
  String? labelText;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        maxLines: 2,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return 'empty form';
          }
          return null;
        },
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.number,
        maxLength: 3,
        minLines: 1,
        style: const TextStyle(
          color: Colors.pink,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          // hintStyle: const TextStyle( fontWeight: FontWeight.bold,fontSize: 20),
          prefixIcon: const Icon(Icons.height),
          prefixIconColor: Colors.pink,
          filled: true,
          fillColor: const Color.fromARGB(255, 236, 233, 233),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              )),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              )),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                  color: Colors.pink, width: 3, style: BorderStyle.solid)),
          focusColor: Colors.green,
        ),
        // cursorColor: Colors.teal,
        cursorHeight: 30,
        cursorWidth: 3,
      ),
    );
  }
}
