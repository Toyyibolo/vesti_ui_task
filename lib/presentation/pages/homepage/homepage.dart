import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vesti_flutter_ui_task/application/providers/tabs_provider.dart';
import 'package:vesti_flutter_ui_task/core/extensions/num_extension.dart';
import 'package:vesti_flutter_ui_task/core/utils/textStyle.dart';
import 'package:vesti_flutter_ui_task/presentation/pages/homepage/home_screen.dart';

class HomePage extends ConsumerWidget {
  List<Widget> HomePageScreens = [
    HomeScreen(),
    Container(child: Center(child: Text('Books PAGE'))),
    Container(
      child: Center(child: Text('Favorite')),
    ),
    Container(child: Center(child: Text('enu Page'))),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomBarIndex = ref.watch(booksbottomBarProvider);

    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF9FAFB),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: AppBar(
                surfaceTintColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding:
                      EdgeInsets.only(left: 20.r, right: 20.r, top: 30.0.h),
                  child: SizedBox(
                    height: 45.h,
                    width: 1.sw,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 18.r,
                            ),
                            10.wi,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome Back!',
                                  style: VestiTextStyles.grey14300,
                                ),
                                Text('Opadijo Toheeb',
                                    style: VestiTextStyles.black16700)
                              ],
                            )
                          ],
                        ),
                        Icon(Icons.notifications_none_sharp),
                      ],
                    ),
                  ),
                ),
              )),
          body: HomePageScreens[bottomBarIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            currentIndex: bottomBarIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              ref.read(booksbottomBarProvider.notifier).state = index;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book), label: 'my book'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'favourite'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu_rounded,
                  ),
                  label: 'menu'),
            ],
          )),
    );
  }
}
