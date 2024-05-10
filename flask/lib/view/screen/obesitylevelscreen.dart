import 'package:flask/controller/obisitycontroller.dart';
import 'package:flask/view/widget/customdropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/customtextformfiled.dart';

class ObistyLevelScreen extends StatelessWidget {
  const ObistyLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 50),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Obesity Level Check'),
          centerTitle: true,
        ),
        body: GetBuilder<ObisityController>(
          init: ObisityController(),
          builder: (controller) => SizedBox(
            child: Form(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFormFilled(
                      controller: controller.weightController,
                      hintText: 'Enter Your Weight',
                      labelText: 'Weight',
                    ),
                    CustomTextFormFilled(
                      controller: controller.heightController,
                      hintText: 'Enter Your Height',
                      labelText: 'Height',
                    ),
                    CustomTextFormFilled(
                      controller: controller.ageController,
                      hintText: 'Enter Your Age',
                      labelText: 'Age',
                    ),
                    CustomTextFormFilled(
                      controller: controller.mainMealsController,
                      hintText: 'How many main meals do you have daily?',
                      labelText: 'Main Meals',
                    ),
                    CustomTextFormFilled(
                      controller: controller.muchWaterController,
                      hintText: 'How much water do you drink daily?',
                      labelText: 'Water Drink',
                    ),
                    CustomTextFormFilled(
                      controller: controller.technologicalDevicesController,
                      hintText:
                          ' How much time do you use \n technological devices?',
                      labelText: 'Technological Devices',
                    ),
                    CustomTextFormFilled(
                      controller: controller.physicalActivityController,
                      hintText: 'How often do you have physical activity?',
                      labelText: 'Physical Activity',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomDrobDownButton(
                      hint: 'Do you eat high caloric food frequently?',
                      items: const ['No', 'Yes'],
                      onChanged: (value) {
                        controller.onChangeDropDownFavc(value);
                      },
                      value: controller.favcVal,
                    ),
                    CustomDrobDownButton(
                      hint:
                          'Has a family member suffered or suffers from overweight?',
                      items: const ['No', 'Yes'],
                      onChanged: (value) {
                        controller.onChangeDropDownfamilyHistory(value);
                      },
                      value: controller.familyHistoryVal,
                    ),
                    CustomDrobDownButton(
                      hint: 'What is Your Gender?',
                      items: const ['Female', 'Male'],
                      onChanged: (value) {
                        controller.onChangeDropDownGender(value);
                      },
                      value: controller.genderVal,
                    ),
                    CustomDrobDownButton(
                      hint: 'Do you eat any food between meals?',
                      items: const ['Sometimes', 'Frequently', 'Always', 'no'],
                      onChanged: (value) {
                        controller.onChangeDropDownfoodBetweenMeals(value);
                      },
                      value: controller.foodBetweenMealsVal,
                    ),
                    CustomDrobDownButton(
                      hint: 'Do you monitor the calories you eat daily?',
                      items: const ['No', 'Yes'],
                      onChanged: (value) {
                        controller.onChangeDropDownCalories(value);
                      },
                      value: controller.caloriesVal,
                    ),
                    CustomDrobDownButton(
                      hint: 'How often do you drink alcohol?',
                      items: const ['Sometimes', 'Frequently', 'Always', 'no'],
                      onChanged: (value) {
                        controller.onChangeDropDownAlcohol(value);
                      },
                      value: controller.alcoholVal,
                    ),
                    CustomDrobDownButton(
                      hint: 'Do you smoke? ',
                      items: const ['No', 'Yes'],
                      onChanged: (value) {
                        controller.onChangeDropDownSmoke(value);
                      },
                      value: controller.smokeVal,
                    ),
                    CustomDrobDownButton(
                      //fcvf
                      hint: ' Do you usually eat vegetables in your meals? ',
                      items: const ['1', '2', '3'],
                      onChanged: (value) {
                        controller.onChangeDropDownVegetables(value);
                      },
                      value: controller.vegetablesVal,
                    ),
                    CustomDrobDownButton(
                      //fcvf
                      hint: ' Which transportation do you usually use?',
                      items: const [
                        'Public_Transportation',
                        'Walking',
                        'Automobile',
                        'Motorbike',
                        'Bike'
                      ],
                      onChanged: (value) {
                        controller.onChangeDropDownTransportation(value);
                      },
                      value: controller.transportationVal,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      // padding: const EdgeInsets.symmetric(vertical:30),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pink)),
                        onPressed: () {
                          controller.onButtonBressed();
                        },
                        child: const Text(
                          'Predict',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
