import 'package:flutter/material.dart';
import 'package:starbucks_ui/data/starbucks_appbar_page.dart';
import 'package:starbucks_ui/data/starbucks_bottom_navigation_bar.dart';

class StarbucksList extends StatefulWidget {
  const StarbucksList({super.key});

  @override
  State<StarbucksList> createState() => _StarbucksListState();
}

class _StarbucksListState extends State<StarbucksList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0, // AppBar의 높이를 조절합니다.
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StarbucksAppbarPage()),
                      );
                    },
                    child: Image.asset(
                      'assets/images/starbucks_appbar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 100, left: 16.0, right: 16.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StarbucksAppbarPage()),
                            );
                          },
                          child: Text(
                            '스타벅스 케이크와 함께 2023년을 마무리 해요',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'YourFontFamily',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 320.0, right: 16.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StarbucksAppbarPage()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '내용보기 ->',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Add more list items here if needed
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: StarbucksBottomNavigationBar(),
    );
  }
}
