import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils/app_colors.dart';
import '../utils/styles.dart';
import '../widgets/common_elevated_button.dart';
import '../widgets/common_text_field.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Complete Profile',
              style: titleTextStyle,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Get started with us your details',
              style: subTitleTextStyle,
            ),
            const SizedBox(
              height: 24,
            ),
            CommonTextField(
              controller: TextEditingController(),
              hintText: 'First Name',
              textInputType: TextInputType.emailAddress,
              validator: (String? value) {},
            ),
            const SizedBox(
              height: 16,
            ),

            CommonTextField(
              controller: TextEditingController(),
              hintText: 'Last Name',
              textInputType: TextInputType.emailAddress,
              validator: (String? value) {},
            ),
            const SizedBox(
              height: 16,
            ),

            CommonTextField(
              controller: TextEditingController(),
              hintText: 'Mobile',
              textInputType: TextInputType.emailAddress,
              validator: (String? value) {},
            ),
            const SizedBox(
              height: 16,
            ),

            CommonTextField(
              controller: TextEditingController(),
              hintText: 'City',
              textInputType: TextInputType.emailAddress,
              validator: (String? value) {},
            ),
            const SizedBox(
              height: 16,
            ),
            CommonTextField(
              maxLines: 5,
              controller: TextEditingController(),
              hintText: 'Shipping Address',
              textInputType: TextInputType.emailAddress,
              validator: (String? value) {},
            ),
            const SizedBox(
              height: 16,
            ),

            CommonElevatedButton(
              title: 'Complete',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
