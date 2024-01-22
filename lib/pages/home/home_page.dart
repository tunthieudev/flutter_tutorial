import 'package:flutter/material.dart';
import 'package:flutter_lesson_5/pages/home/models/story.dart';
import 'package:flutter_lesson_5/pages/home/widgets/home_app_bar.dart';
import 'package:flutter_lesson_5/pages/home/widgets/story_list_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Story> stories = [
    const Story(name: 'Your Story', avatar: 'assets/images/avatar.png'),
    const Story(
      name: 'karennne',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
    const Story(name: 'karennne', avatar: 'assets/images/avatar1.png'),
    const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            StoryListView(
              stories: stories,
            ),
            Divider(),
            Row(
              children: [
                Container(
                  // color: Colors.orange,
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/avatar2.png',
                    width: 32,
                    height: 32,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "joshua_l",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              ClipRRect(
                                child: SvgPicture.asset(
                                  'assets/icons/official_icon.svg',
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Tokyo, Japan",
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                ),
              ],
            ),
            //Image Post
            Stack(
              children: [
                ClipRRect(
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/Rectangle.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 16,
                  width: 38,
                  height: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Align(
                        child: Text(
                          "1/3",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                ClipRRect(
                  child: SvgPicture.asset(
                    'assets/icons/Like.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                ClipRRect(
                  child: SvgPicture.asset(
                    'assets/icons/Comment.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                ClipRRect(
                  child: SvgPicture.asset(
                    'assets/icons/Messanger.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  width: 75,
                ),
                ClipRRect(
                  child: SvgPicture.asset(
                    'assets/icons/Pagination.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                ClipRRect(
                  child: SvgPicture.asset(
                    'assets/icons/Save.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  child: Image.asset(
                    'assets/images/avatar.png',
                    width: 17,
                    height: 17,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Liked by ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      TextSpan(
                        text: 'craig_love',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      TextSpan(
                        text: '44,686 others',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "joshua_l",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text:
                              "The game in Japan was amazing and I want to share some photos",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            ClipRRect(
              child: SvgPicture.asset(
                'assets/images/Tab_1.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            ClipRRect(
              child: SvgPicture.asset(
                'assets/images/Tab_2.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            ClipRRect(
              child: SvgPicture.asset(
                'assets/images/Tab_3.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            ClipRRect(
              child: SvgPicture.asset(
                'assets/icons/Like.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            ClipRRect(
              child: Image.asset(
                'assets/images/avatar.png',
                width: 23,
                height: 23,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
