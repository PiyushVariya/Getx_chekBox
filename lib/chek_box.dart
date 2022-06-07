import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/check_box_controller.dart';

class CheckboxGetxDemo extends StatefulWidget {
  const CheckboxGetxDemo({Key? key}) : super(key: key);

  @override
  State<CheckboxGetxDemo> createState() => _CheckboxGetxDemoState();
}

class _CheckboxGetxDemoState extends State<CheckboxGetxDemo> {
  // bool value = false;
  final CheckBoxController checkBoxController = Get.put(CheckBoxController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Using GetX
            GetX<CheckBoxController>(
              builder: (_) => Checkbox(
                  value: checkBoxController.isChecked1.value,
                  onChanged: (value) => checkBoxController.isChecked1.value =
                      !checkBoxController.isChecked1.value),
            ),
            GetX<CheckBoxController>(
              builder: (controller) => Checkbox(
                  value: checkBoxController.isChecked2.value,
                  onChanged: (value) => checkBoxController.isChecked2.value =
                      !checkBoxController.isChecked2.value),
            ),

            /// Using Obx
            // Obx(
            //   () => Checkbox(
            //     value: checkBoxController.isChecked1.value,
            //     onChanged: (value) => checkBoxController.isChecked1.value =
            //         !checkBoxController.isChecked1.value,
            //     // setState(() {
            //     //   this.value = value!;
            //     // });
            //   ),
            // ),
            // Obx(
            //   () => Checkbox(
            //       value: checkBoxController.isChecked2.value,
            //       onChanged: (val) {
            //         checkBoxController.isChecked2.value =
            //             !checkBoxController.isChecked2.value;
            //       }),
            // ),
          ],
        ),
      ),
    );
  }
}
