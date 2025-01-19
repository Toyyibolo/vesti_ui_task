import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vesti_flutter_ui_task/application/providers/books_provider.dart';
import 'package:vesti_flutter_ui_task/application/providers/tabs_provider.dart';
import 'package:vesti_flutter_ui_task/core/extensions/num_extension.dart';
import 'package:vesti_flutter_ui_task/core/utils/navigations.dart';
import 'package:vesti_flutter_ui_task/core/utils/textStyle.dart';
import 'package:vesti_flutter_ui_task/presentation/pages/homepage/books_page.dart';

// ignore: must_be_immutable
class HomeScreen extends ConsumerWidget {
  List<String> categories = [
    'All',
    'Historical Fiction',
    'Fantasy',
    'Tragedy',
    'Engineering'
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(booksTabProvider);
    //final bottomBarIndex = ref.watch(booksbottomBarProvider);

    final borrowedList = ref.watch(allBorrowedBooksProvider);
    final filteredBorrowedList = ref.watch(filteredBorrowedBooksProvider);

    final newArrivalList = ref.watch(allNewArrivalBooksProvider);
    final filterednewArrivalList = ref.watch(filteredNewArrivalBooksProvider);

    final allbooksList = ref.watch(booksProvider);
    final byGenreList = ref.watch(filteredBooksProvider);
    return Padding(
      padding: EdgeInsets.only(left: 20.0.r, right: 20.0.r),
      child: ListView(
        shrinkWrap: true,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.hi,
          SizedBox(
            width: 1.sw,
            height: 56.w,
            child: Row(
              children: [
                Container(
                  width: 0.68.sw,
                  height: 56.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: const Color(0xffEAECF0), width: 0.5)),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                15.wi,
                Container(
                  width: 0.15.sw,
                  height: 56.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: const Color(0xffEAECF0), width: 0.5)),
                  child: const Center(
                    child: Icon(
                      Icons.filter_alt,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          16.hi,
          Text(
            'Categories',
            style: VestiTextStyles.black16600,
          ),
          10.hi,
          SizedBox(
            height: 36.h,
            width: 1.sw,
            child: ListView.builder(
                //shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: ((context, index) {
                  final category = categories[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 15.0.r),
                    child: GestureDetector(
                      onTap: () {
                        ref.read(booksTabProvider.notifier).state = index;
                        if (selectedIndex == 0) {
                          filterBooksAllTab(ref);
                        } else {
                          filterBooksByGenre(ref, category);
                        }
                      },
                      child: Container(
                          //width: 0.68.sw,
                          height: 36.h,
                          decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? const Color(0xff303d94)
                                  : Colors.white,
                              border: Border.all(
                                  color: const Color(0xffEAECF0), width: 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Text(category),
                          )),
                    ),
                  );
                })),
          ),
          30.hi,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recently Borrowed', style: VestiTextStyles.black16600),
              Text('View all', style: VestiTextStyles.blue14600)
            ],
          ),
          20.hi,
          SizedBox(
            width: 1.sw,
            height: 202.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: selectedIndex == 0
                  ? borrowedList.length
                  : filteredBorrowedList.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    pushTo(
                        context,
                        BookInfoPage(
                            book: selectedIndex == 0
                                ? borrowedList[index]
                                : filteredBorrowedList[index]));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0.r),
                    child: SizedBox(
                      height: 202.h,
                      width: 127.w,
                      child: Column(
                        children: [
                          Container(
                              height: 170.h,
                              width: 127.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: selectedIndex == 0
                                          ? NetworkImage(
                                              borrowedList[index].imageUrl)
                                          : NetworkImage(
                                              filteredBorrowedList[index]
                                                  .imageUrl),
                                      fit: BoxFit.cover)),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0.r),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: const Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ))),
                          8.hi,
                          Text(selectedIndex == 0
                              ? borrowedList[index].daysLeft
                              : filteredBorrowedList[index].daysLeft)
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          30.hi,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New Arrival', style: VestiTextStyles.black16600),
              Text('View all', style: VestiTextStyles.blue14600)
            ],
          ),
          20.hi,
          SizedBox(
            width: 1.sw,
            height: 346.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: selectedIndex == 0
                  ? newArrivalList.length
                  : filterednewArrivalList.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    pushTo(
                        context,
                        BookInfoPage(
                          book: selectedIndex == 0
                              ? newArrivalList[index]
                              : filterednewArrivalList[index],
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.0.r),
                    child: SizedBox(
                      height: 346.h,
                      width: 199.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 257.h,
                              width: 199.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: selectedIndex == 0
                                          ? NetworkImage(
                                              newArrivalList[index].imageUrl)
                                          : NetworkImage(
                                              filterednewArrivalList[index]
                                                  .imageUrl),
                                      fit: BoxFit.cover)),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0.r),
                                    child: Container(
                                      height: 36,
                                      width: 36,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: const Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ))),
                          8.hi,
                          Text(
                            selectedIndex == 0
                                ? newArrivalList[index].title
                                : filterednewArrivalList[index].title,
                            style: VestiTextStyles.dBlack14600,
                          ),
                          7.hi,
                          Text(selectedIndex == 0
                              ? newArrivalList[index].author
                              : filterednewArrivalList[index].author),
                          2.hi,
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              5.wi,
                              Text(selectedIndex == 0
                                  ? newArrivalList[index].rating.toString()
                                  : filterednewArrivalList[index]
                                      .rating
                                      .toString())
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          30.hi,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recommended for you', style: VestiTextStyles.black16600),
              Text('View all', style: VestiTextStyles.blue14600)
            ],
          ),
          20.hi,
          SizedBox(
            width: 1.sw,
            height: 346.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:
                  selectedIndex == 0 ? allbooksList.length : byGenreList.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    pushTo(
                        context,
                        BookInfoPage(
                          book: selectedIndex == 0
                              ? allbooksList[index]
                              : byGenreList[index],
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.0.r),
                    child: SizedBox(
                      height: 346.h,
                      width: 199.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 257.h,
                              width: 199.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: selectedIndex == 0
                                          ? NetworkImage(
                                              allbooksList[index].imageUrl)
                                          : NetworkImage(
                                              byGenreList[index].imageUrl),
                                      fit: BoxFit.cover)),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0.r),
                                    child: Container(
                                      height: 36,
                                      width: 36,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: const Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ))),
                          8.hi,
                          Text(
                            selectedIndex == 0
                                ? allbooksList[index].title
                                : byGenreList[index].title,
                            style: VestiTextStyles.dBlack14600,
                          ),
                          7.hi,
                          Text(selectedIndex == 0
                              ? allbooksList[index].author
                              : byGenreList[index].author),
                          2.hi,
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              5.wi,
                              Text(selectedIndex == 0
                                  ? allbooksList[index].rating.toString()
                                  : byGenreList[index].rating.toString())
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
