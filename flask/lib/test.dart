import 'package:flutter/material.dart';

class TextFormFielda extends StatelessWidget {
  TextFormFielda();
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Form(
        key: formState,
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'empty form';
                }
                return null;
              },
              textAlign: TextAlign.start,
              keyboardType: TextInputType.number,
              maxLength: 3,
              style: const TextStyle(
                color: Colors.pink,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              decoration: const InputDecoration(
                hintText: '',
                labelText: 'labelText',
                labelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                prefixIcon: Icon(Icons.height),
                prefixIconColor: Colors.pink,
                filled: true,
                fillColor: Color.fromARGB(255, 236, 233, 233),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                        color: Colors.pink, width: 3, style: BorderStyle.solid)),
                focusColor: Colors.green,
              ),
              // cursorColor: Colors.teal,
              cursorHeight: 30,
              cursorWidth: 3,
            ),
            TextFormField(
              controller: controller2,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'empty form';
                }
                return null;
              },
              textAlign: TextAlign.start,
              keyboardType: TextInputType.number,
              maxLength: 3,
              style: const TextStyle(
                color: Colors.pink,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              decoration: const InputDecoration(
                hintText: '',
                labelText: 'labelText',
                labelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                prefixIcon: Icon(Icons.height),
                prefixIconColor: Colors.pink,
                filled: true,
                fillColor: Color.fromARGB(255, 236, 233, 233),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                        color: Colors.pink, width: 3, style: BorderStyle.solid)),
                focusColor: Colors.green,
              ),
              // cursorColor: Colors.teal,
              cursorHeight: 30,
              cursorWidth: 3,
            ),
            TextButton(onPressed: (){
              if (formState.currentState!.validate()) {
                  print('valid');
                } else {
                  print('not valid');
                }
            }, child: const Text('Button'))
          ],
        ),
      ),
    );
  }
}
