import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

final scaffoldState = GlobalKey<ScaffoldState>();

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext contex) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      appBar: AppBar(
        backgroundColor: Color(0xff1C1F2E),
        elevation: 0,
        title: Container(
          child: Image.asset('Images/mood.png'),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8),
            child: Image.asset('Images/icon_direct.png'),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 100, child: getStoryList()),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
                onPressed: () {
                  scaffoldState.currentState
                      ?.showBottomSheet((context) => Container(
                            color: Colors.red,
                            height: 300,
                          ));
                },
                child: Text('Show ButtomShit')),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (contex, index) {
                return Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    DottedBorder(
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(17),
                                      padding: EdgeInsets.all(7),
                                      color: Color(0xffF35383),
                                      dashPattern: [28, 15],
                                      strokeWidth: 2,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        child: Container(
                                          height: 38,
                                          width: 38,
                                          child:
                                              Image.asset('Images/profile.png'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Ehsan Mohammadi',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'احسان محمدی مقدم',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset("Images/icon_menu.png"),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  width: 394,
                                  height: 440,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Positioned(
                                        top: 0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          child: Container(
                                            child: Image.asset(
                                              'Images/post_cover.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 15,
                                        right: 15,
                                        child: Image.asset(
                                            'Images/icon_video.png'),
                                      ),
                                      Positioned(
                                          bottom: 15,
                                          child: ClipRRect(
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 20, sigmaY: 20),
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                            'Images/icon_hart.png'),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          '2.6',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'GB',
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                            'Images/icon_comments.png'),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          '1.5 K',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'GB',
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                            'Images/icon_share.png'),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                            'Images/icon_tab_bookmark.png'),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    gradient: LinearGradient(
                                                        begin: Alignment
                                                            .centerLeft,
                                                        end: Alignment
                                                            .centerRight,
                                                        colors: [
                                                          Color.fromRGBO(255,
                                                              255, 255, 0.5),
                                                          Color.fromRGBO(255,
                                                              255, 255, 0.2)
                                                        ])),
                                                width: 340,
                                                height: 46,
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          );
                        })
                  ],
                );
              },
            ),
          ),
        ],
      ),
    ));
  }

  Widget getStoryList() {
    return Container(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(17),
                      padding: EdgeInsets.all(7),
                      color: Color(0xffF35383),
                      dashPattern: [40, 10],
                      strokeWidth: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Container(
                          height: 58,
                          width: 58,
                          child: Icon(
                            Icons.add,
                            size: 40,
                            color: Color(0xffF35383),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(17),
                      padding: EdgeInsets.all(7),
                      color: Color(0xffF35383),
                      dashPattern: [40, 10],
                      strokeWidth: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Container(
                          height: 58,
                          width: 58,
                          child: Image.asset('Images/profile.png'),
                        ),
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                scaffoldState.currentState
                    ?.showBottomSheet((context) => Container(
                          color: Colors.red,
                          height: 300,
                        ));
              },
              child: Text('Show ButtomShit')),
          SizedBox(height: 100, child: getStoryList()),
          SizedBox(
            height: 15,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 9,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(17),
                            padding: EdgeInsets.all(7),
                            color: Color(0xffF35383),
                            dashPattern: [28, 15],
                            strokeWidth: 2,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              child: Container(
                                height: 38,
                                width: 38,
                                child: Image.asset('Images/profile.png'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Ehsan Mohammadi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Text(
                                  'احسان محمدی مقدم',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Image.asset("Images/icon_menu.png"),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 394,
                        height: 440,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Positioned(
                              top: 0,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                child: Container(
                                  child: Image.asset(
                                    'Images/post_cover.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: 15,
                              child: Image.asset('Images/icon_video.png'),
                            ),
                            Positioned(
                                bottom: 15,
                                child: ClipRRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 20, sigmaY: 20),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'Images/icon_hart.png'),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '2.6',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'GB',
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'Images/icon_comments.png'),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '1.5 K',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'GB',
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'Images/icon_share.png'),
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'Images/icon_tab_bookmark.png'),
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Color.fromRGBO(
                                                    255, 255, 255, 0.5),
                                                Color.fromRGBO(
                                                    255, 255, 255, 0.2)
                                              ])),
                                      width: 340,
                                      height: 46,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
