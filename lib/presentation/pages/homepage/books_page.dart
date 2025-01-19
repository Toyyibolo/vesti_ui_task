import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vesti_flutter_ui_task/application/providers/books_provider.dart';
import 'package:vesti_flutter_ui_task/core/extensions/num_extension.dart';
import 'package:vesti_flutter_ui_task/core/utils/navigations.dart';
import 'package:vesti_flutter_ui_task/core/utils/textStyle.dart';
import 'package:vesti_flutter_ui_task/data/models/books.dart';

class BookInfoPage extends ConsumerWidget {
  Book book;
  BookInfoPage({required this.book});

  // List<String> boxTitle = ['Rating', 'Pages', 'Language'];
  // List<Widget> boxSubTitle = [

  // ]

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final byGenreList = ref.watch(filteredBooksProvider);
    return Scaffold(
        backgroundColor: Color(0xffF9FAFB),
        appBar: AppBar(
          title: Text('Book Details',
              style: VestiTextStyles.blue14600.copyWith(fontSize: 18)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              20.hi,
              Center(
                  child: Text(
                'OUT OF STOCK',
                style: TextStyle(color: Colors.red),
              )),
              10.hi,
              Center(
                child: SizedBox(
                    width: 199.w,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 199.w,
                          height: 257.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(book.imageUrl))),
                        ),
                        15.hi,
                        Text(
                          book.title,
                          style: VestiTextStyles.black16700,
                        ),
                        Text(
                          book.author,
                          style: VestiTextStyles.grey14500,
                        )
                      ],
                    )),
              ),
              20.hi,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xffEAECF0), width: 0.5)),
                    width: 103.w,
                    child: Padding(
                      padding: EdgeInsets.all(20.0.r),
                      child: Column(
                        children: [
                          Text('Rating',
                              style: VestiTextStyles.blue14500
                                  .copyWith(fontSize: 12)),
                          10.hi,
                          Divider(),
                          10.hi,
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              3.wi,
                              Text(book.rating.toString())
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xffEAECF0), width: 0.5)),
                    width: 103.w,
                    child: Padding(
                      padding: EdgeInsets.all(20.0.r),
                      child: Column(
                        children: [
                          Text('Pages',
                              style: VestiTextStyles.blue14500
                                  .copyWith(fontSize: 12)),
                          10.hi,
                          Divider(),
                          10.hi,
                          Text(
                            '500',
                            style: VestiTextStyles.blue14600
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xffEAECF0), width: 0.5)),
                    width: 103.w,
                    child: Padding(
                      padding: EdgeInsets.all(20.0.r),
                      child: Column(
                        children: [
                          Text(
                            'Language',
                            style: VestiTextStyles.blue14500
                                .copyWith(fontSize: 12),
                          ),
                          10.hi,
                          Divider(),
                          10.hi,
                          Text(
                            'ENG',
                            style: VestiTextStyles.blue14600
                                .copyWith(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              20.hi,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text(
                      'Synopsis',
                      style: VestiTextStyles.black16700,
                    ),
                    10.wi,
                    Container(
                      padding: EdgeInsets.all(5.r),
                      decoration: BoxDecoration(
                          color: Color(0xfff2f4f7),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Text(
                        book.genre,
                        style: VestiTextStyles.blue14600,
                      )),
                    )
                  ]),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        color: Color(0xfff2f4f7), shape: BoxShape.circle),
                    child: const Center(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              15.hi,
              Text(book.synopsis),
              20.hi,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Reviews', style: VestiTextStyles.black16600),
                  Text('View all', style: VestiTextStyles.blue14600)
                ],
              ),
              20.hi,
              Reviews(book: book, index: 0),
              10.hi,
              Reviews(book: book, index: 1),
              30.hi,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('More for you', style: VestiTextStyles.black16600),
                  Text('View all', style: VestiTextStyles.blue14600)
                ],
              ),
              20.hi,
              SizedBox(
                width: 1.sw,
                height: 346.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: byGenreList.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        pushTo(
                            context,
                            BookInfoPage(
                              book: byGenreList[index],
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
                                        image: NetworkImage(
                                            byGenreList[index].imageUrl ?? ""),
                                        fit: BoxFit.cover,
                                        onError: (error, stackTrace) {},
                                      )),
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
                                byGenreList[index].title,
                                style: VestiTextStyles.dBlack14600,
                              ),
                              7.hi,
                              Text(byGenreList[index].author),
                              2.hi,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  5.wi,
                                  Text(byGenreList[index].rating.toString())
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
        ));
  }
}

class Reviews extends StatelessWidget {
  Book book;
  int index;
  Reviews({required this.book, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 1.sw,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                  ),
                  10.wi,
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(book.reviews[index].userName),
                        Row(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 14,
                                    ))),
                      ])
                ],
              ),
              15.hi,
              Text('2 weeks ago', style: VestiTextStyles.grey14300),
            ],
          ),
          Text(book.reviews[index].comment)
        ]));
  }
}
