import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vesti_flutter_ui_task/core/extensions/extension_string.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vesti_flutter_ui_task/core/extensions/num_extension.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vesti_flutter_ui_task/core/utils/navigations.dart';
import 'package:vesti_flutter_ui_task/core/utils/textStyle.dart';
import 'package:vesti_flutter_ui_task/presentation/pages/onboarding/onboarding_second.dart';
import 'package:vesti_flutter_ui_task/presentation/widgets/vesti_button_blue.dart';

class FirstOnboarding extends StatefulWidget {
  @override
  State<FirstOnboarding> createState() => _FirstOnboardingState();
}

class _FirstOnboardingState extends State<FirstOnboarding> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    List<String> onboardText = [
      'Enjoy the Best Features',
      'Read Books, Borrow Books',
      'Enjoy the Best App'
    ];
    List<String> onboardSubText = [
      'Experience the magic of requesting for books anytime, anywhere',
      'Experience the magic of requesting for books anytime, anywhere',
      'Experience the magic of requesting for books anytime, anywhere'
    ];

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
                  image: AssetImage('first_onboarding'.onboarding2Png),
                  fit: BoxFit.cover)),
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              58.hi,
              Image.asset('assets/onboarding/png/Vesti_logo.png'),
              const Spacer(
                flex: 1,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0.r, right: 20.0.r),
                    child: SizedBox(
                        height: 0.1.sh,
                        width: 1.sw,
                        child: PageView.builder(
                            itemCount: 3,
                            controller: _controller,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    onboardText[index],
                                    style: VestiTextStyles.white28700,
                                  ),
                                  Text(
                                    onboardSubText[index],
                                    style: VestiTextStyles.white14300,
                                  )
                                ],
                              );
                            })),
                  )),
              20.hi,
              Padding(
                padding:
                    EdgeInsets.only(left: 20.0.r, right: 20.r, bottom: 50.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: const SlideEffect(
                          paintStyle: PaintingStyle.stroke,
                          dotHeight: 10,
                          dotWidth: 10,
                          strokeWidth: 2,
                          dotColor: Colors.white,
                          activeDotColor: Color.fromRGBO(48, 61, 148, 1),
                        ),
                      ),
                      SizedBox(
                          height: 48.h,
                          width: 133.w,
                          child: VestiButtonBlue(
                            buttonText: 'Get Started',
                            onPressed: () {
                              pushReplacementTo(context, SecondOnboarding());
                            },
                          ))
                    ]),
              )
            ],
          )),
    );
  }
}
