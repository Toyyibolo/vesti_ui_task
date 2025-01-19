import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vesti_flutter_ui_task/core/extensions/num_extension.dart';
import 'package:vesti_flutter_ui_task/core/utils/navigations.dart';
import 'package:vesti_flutter_ui_task/core/utils/textStyle.dart';
import 'package:vesti_flutter_ui_task/presentation/pages/homepage/homepage.dart';
import 'package:vesti_flutter_ui_task/presentation/widgets/textFields.dart';
import 'package:vesti_flutter_ui_task/presentation/widgets/vesti_button_dBlue.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back_outlined),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0.r, right: 20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's sign you in",
              style: VestiTextStyles.black28700,
            ),
            5.hi,
            Text(
              'Welcome, you have been missed',
              style: VestiTextStyles.grey14500,
            ),
            40.hi,
            SizedBox(
                height: 50.h,
                child: VestiTextField(
                  hintText: 'ovie@vesti.com',
                  labelText: 'Email *',
                )),
            24.hi,
            SizedBox(
                height: 50.h,
                child: VestiTextField(
                  hintText: '********',
                  labelText: 'Password *',
                )),
            30.hi,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: checkValue,
                        onChanged: (value) {
                          value = !checkValue;
                        }),
                    //10.wi,
                    Text(
                      'Remember me',
                      style: VestiTextStyles.blue14600,
                    ),
                  ],
                ),
                Text(
                  'Forgot Password?',
                  style: VestiTextStyles.dBlack14600,
                ),
              ],
            ),
            30.hi,
            SizedBox(
              width: 1.sw,
              height: 50.h,
              child: VestiButtonDBlue(
                buttonText: 'Sign In',
                onPressed: () {
                  pushReplacementTo(context, HomePage());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
