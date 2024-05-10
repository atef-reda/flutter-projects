import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDrobDownButton extends StatelessWidget {
  CustomDrobDownButton({
    super.key,
    required this.items,
    required this.value,
    required this.hint,
    required this.onChanged,
  });

  List? items;
  String? hint;
  String? value;
  void Function(String val)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.pink[50], borderRadius: BorderRadius.circular(20)),
      child: DropdownButton(
        itemHeight: 80,
        hint: Text(
          hint!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        iconEnabledColor: Colors.pink,
        iconDisabledColor: Colors.black,
        borderRadius: BorderRadius.circular(20),
        dropdownColor: const Color.fromARGB(255, 228, 56, 113),
        isExpanded: true,
        elevation: 30,
        underline: const Divider(
          color: Color(0x00000000),
        ),
        items: items!
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ))
            .toList(),
        onChanged: (val) {
          onChanged!(val! as String);
          print(value);
        },
        value: value,
      ),
    );
  }
}
