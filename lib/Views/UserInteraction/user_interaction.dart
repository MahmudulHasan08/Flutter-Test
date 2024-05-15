import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/Controllers/user_interaction_controller.dart';
import 'package:test/Widgets/custombutton.dart';

class UserInterActionScreen extends StatelessWidget {
  const UserInterActionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(UserInteractionController());
    return Scaffold(
      appBar: AppBar(
        title: Text('User Interaction Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: controller.formKey,
                child: TextFormField(
                  controller: controller.nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                       return 'Please enter your name';
                    }
                    return null;
                  },
                ),
              ),
            ),
            CustomButtonAuth(name: "SUBMIT",onTap: (){
              if(controller.formKey.currentState!.validate()){
                           String name = controller.nameController.text;
             if (name.isNotEmpty) {
                  Get.snackbar(
                    '$name',
                    'Hello, $name!',
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.black,
                     backgroundColor: Color(0xff25946A),
                    duration: Duration(seconds: 2),
                    snackStyle: SnackStyle.GROUNDED
                  );
                } else {
                  Get.snackbar(
                    'Oops!',
                    'Please enter your name.',
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Color(0xff25946A),
                    backgroundColor: Color(0xff25946A),

                    duration: Duration(seconds: 2),
                  );
                }
              }
   
            },)
            // ElevatedButton(
            //   onPressed: () {
            //     String name = controller.nameController.text;
            //     if (name.isNotEmpty) {
            //       Get.snackbar(
            //         'Hello!',
            //         'Hello, $name!',
            //         snackPosition: SnackPosition.BOTTOM,
            //         duration: Duration(seconds: 2),
            //       );
            //     } else {
            //       Get.snackbar(
            //         'Oops!',
            //         'Please enter your name.',
            //         snackPosition: SnackPosition.BOTTOM,
            //         duration: Duration(seconds: 2),
            //       );
            //     }
            //   },
            //   child: Text('Say Hello'),
            // ),
          ],
        ),
      ),
    );
  }
}