import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Search_Screen extends StatefulWidget {
  const Search_Screen({Key? key}) : super(key: key);

  @override
  State<Search_Screen> createState() => _Search_ScreenState();
}

class _Search_ScreenState extends State<Search_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff1C1F2E),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, right: 10, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color.fromRGBO(255, 255, 255, 0.4),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'Images/icon_search.png',
                        width: 22,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search User',
                                hintStyle: TextStyle(color: Colors.white),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ))
                    ],
                  ),
                ),
              ),
              getStoryList(),
              Expanded(
                child: GridView.custom(
                  gridDelegate: SliverQuiltedGridDelegate(
                    mainAxisSpacing: 5,
                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    pattern: [
                      QuiltedGridTile(2, 1),
                      QuiltedGridTile(2, 2),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                        (context, index) {
                      return Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: FittedBox(fit: BoxFit.cover,
                            child: Image.asset('Images/item$index.png'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget getStoryList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color.fromRGBO(255, 255, 255, 0.5)),
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Center(
                child: Text(
                  'Item$index',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )),
          );
        },
      ),
    );
  }
}
