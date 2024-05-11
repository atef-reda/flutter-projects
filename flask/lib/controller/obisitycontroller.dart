import 'package:flask/model/postdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObisityController extends GetxController {
  Map<String, dynamic>? data;
  var response;
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController mainMealsController = TextEditingController();
  TextEditingController muchWaterController = TextEditingController();
  TextEditingController technologicalDevicesController =
      TextEditingController();
  TextEditingController physicalActivityController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? favcVal;
  String? familyHistoryVal;
  String? genderVal;
  String? foodBetweenMealsVal;
  String? smokeVal;
  String? caloriesVal;
  String? alcoholVal;
  String? transportationVal;
  String? vegetablesVal;

  onChangeDropDownFavc(String val) {
    favcVal = val;
    update();
  }

  onChangeDropDownfamilyHistory(String val) {
    familyHistoryVal = val;
    update();
  }

  onChangeDropDownGender(String val) {
    genderVal = val;
    update();
  }

  onChangeDropDownfoodBetweenMeals(String val) {
    foodBetweenMealsVal = val;
    update();
  }

  onChangeDropDownSmoke(String val) {
    smokeVal = val;
    update();
  }

  onChangeDropDownCalories(String val) {
    caloriesVal = val;
    update();
  }

  onChangeDropDownAlcohol(String val) {
    alcoholVal = val;
    update();
  }

  onChangeDropDownTransportation(String val) {
    transportationVal = val;
    update();
  }

  onChangeDropDownVegetables(String val) {
    vegetablesVal = val;
    update();
  }

  collectdata() {
    data = {
      "Age": double.tryParse(ageController.text),
      "Gender": genderVal,
      "Height": double.tryParse(heightController.text),
      "Weight": double.tryParse(weightController.text),
      "CALC": alcoholVal,
      "FAVC": favcVal,
      "FCVC": vegetablesVal,
      "NCP": double.tryParse(mainMealsController.text),
      "SCC": caloriesVal,
      "SMOKE": smokeVal,
      "CH2O": double.tryParse(muchWaterController.text),
      "family_history_with_overweight": familyHistoryVal,
      "FAF": double.tryParse(physicalActivityController.text),
      "TUE": int.tryParse(technologicalDevicesController.text),
      "CAEC": foodBetweenMealsVal,
      "MTRANS": transportationVal,
    };
    print(data);
  }

  showDialog({String? content}) {
    Get.defaultDialog(
      backgroundColor: Colors.pink[100],
      title: 'Obesity Level',
      titleStyle: const TextStyle(),
      content: Text(
        content!,
        style: const TextStyle(fontSize: 20),
      ),
      onCancel: () {
        clearvariables();
        print('close dialog');
        update();
      },
    );
  }

  clearvariables() {
    ageController.clear();
    heightController.clear();
    weightController.clear();
    mainMealsController.clear();
    muchWaterController.clear();
    technologicalDevicesController.clear();
    physicalActivityController.clear();

    favcVal = null;
    familyHistoryVal = null;
    genderVal = null;
    foodBetweenMealsVal = null;
    smokeVal = null;
    caloriesVal = null;
    alcoholVal = null;
    transportationVal = null;
    vegetablesVal = null;
  }

  sendDataToMedel() async {
    print(formKey.currentState!.validate());
    try {
      if (formKey.currentState!.validate() &&
          ageController.text !='' &&
          heightController.text != '' &&
          weightController.text != '' &&
          mainMealsController.text != '' &&
          muchWaterController.text != '' &&
          technologicalDevicesController.text != '' &&
          physicalActivityController.text != '' &&
          favcVal != null &&
          familyHistoryVal != null &&
          genderVal != null &&
          foodBetweenMealsVal != null &&
          smokeVal != null &&
          caloriesVal != null &&
          alcoholVal != null &&
          transportationVal != null &&
          vegetablesVal != null) {
        response = await postData('https://machine-project-app-437e92dd5e13.herokuapp.com/predict', data!);
        response.fold((l) => null, (r) {
          print(r[0]['prediction']);
          showDialog(content: r[0]['prediction']);
          print(formKey.currentState!.validate());
        });
      } else {
        Get.defaultDialog(
          backgroundColor: Colors.grey[200],
          title: 'warning',
          titleStyle: const TextStyle(color: Colors.red),
          content: const Text(
            'Should Complete All Form',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        );
      }
    } catch (e) {
      print('An error occurred during the request: $e');
    }
  }

  onButtonBressed() {
    collectdata();
    sendDataToMedel();
  }
}
