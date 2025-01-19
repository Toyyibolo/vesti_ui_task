import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vesti_flutter_ui_task/core/extensions/extension_string.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vesti_flutter_ui_task/core/extensions/num_extension.dart';
import 'package:vesti_flutter_ui_task/core/utils/navigations.dart';
import 'package:vesti_flutter_ui_task/presentation/pages/authentication/sign_in.dart';
import 'package:vesti_flutter_ui_task/presentation/widgets/vesti_button_blue.dart';

class SecondOnboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      //backgroundColor: Colors.transparent,
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('second_onboarding'.onboarding2Png),
                  fit: BoxFit.cover)),
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              58.hi,
              Image.asset('assets/onboarding/png/Vesti_logo.png'),
              const Spacer(
                flex: 2,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 48.h,
                    width: 0.9.sw,
                    child: VestiButtonBlue(
                        buttonText: 'Create an account',
                        onPressed: () {
                          pushTo(context, SignInPage());
                        }),
                  )),
              10.hi,
              Text(
                'Already have an account?, sign in',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
              50.hi
            ],
          )),
    );
  }
}
