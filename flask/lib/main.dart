import 'package:flask/test.dart';
import 'package:flask/view/screen/obesitylevelscreen.dart';
import 'package:flask/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Obesity Level',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

// class Flask extends StatefulWidget {
//   Flask({super.key});

//   @override
//   State<Flask> createState() => _FlaskState();
// }

// class _FlaskState extends State<Flask> {
//   late var interpreter;
//   TextEditingController heightController = TextEditingController();
//   TextEditingController ageController = TextEditingController();

//   loadModel() async {
//     try {
//       interpreter = await Interpreter.fromAsset('assets/model.tflite');
//     } catch (e) {
//       print('Error loading model: $e');
//     }
//   }

//   performAction() {
//     //   int inputNumber=int.parse(numberController.text);
//     //   // For ex: if input tensor shape [1,5] and type is float32
//     //   var input = [inputNumber];
//     //   // if output tensor shape [1,2] and type is float32
//     //   var output = List.filled(1 * 1, 0).reshape([1, 1]);
//     //   // inference
//     //   interpreter.run(input, output);
//     //  // print the output
//     //   print(output);
//   }
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   @override
//   initState() {
//     loadModel();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     send() {
//       var formData = formKey.currentState;
//       if (formData!.validate()) {
//         print('Valid');
//       } else {
//         print('Not Valid');
//       }
//       double a = double.parse('1.2');
//       print('$a');
//     }

//     return 
//   }
// }
