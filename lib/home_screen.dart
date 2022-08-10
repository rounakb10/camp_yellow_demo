import 'package:flutter/material.dart';

import 'widgets/achievement_row.dart';
import 'widgets/clan_discussion.dart';
import 'widgets/clan_member.dart';
import 'widgets/custom_divider.dart';
import 'widgets/custom_title_text.dart';
import 'widgets/live_activity.dart';
import 'widgets/past_performance.dart';
import 'widgets/see_more.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color customYellow = const Color(0xffe8ba4a);
  Color customPink = const Color(0xffd22b66);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        elevation: 0,
        child: SizedBox(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: MediaQuery.of(context).size.width / 50),
              IconButton(
                  onPressed: () => {}, icon: Image.asset('images/home.png')),
              SizedBox(width: MediaQuery.of(context).size.width / 12),
              IconButton(
                  onPressed: () => {}, icon: Image.asset('images/star.png')),
              SizedBox(width: MediaQuery.of(context).size.width / 12),
              IconButton(
                  onPressed: () => {},
                  icon: Image.asset('images/leaderboard.png')),
              SizedBox(width: MediaQuery.of(context).size.width / 12),
              IconButton(
                  onPressed: () => {}, icon: Image.asset('images/clan.png')),
              SizedBox(width: MediaQuery.of(context).size.width / 12),
              IconButton(
                  onPressed: () => {}, icon: Image.asset('images/profile.png')),
            ],
          ),
        ),
      ),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: customYellow,
                        width: 2,
                      ),
                    ),
                    child: Image.asset(
                      'images/banner_image.jpg',
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                  Container(
                    color: const Color(0x90000000),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 110,
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: const Text(
                      "Clan Name: Lorem Ipsum\n\n28 members, 5 online",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDivider(context: context),
                  CustomTitleText(
                      customYellow: customYellow, text: 'Achievements'),
                  Row(
                    children: [
                      Text(
                        "Current League",
                        style: TextStyle(
                          color: customPink,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.161),
                      Image.asset(
                        'images/shield.png',
                        width: 60,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  AchievementRow(
                      customPink: customPink,
                      customYellow: customYellow,
                      context: context,
                      text: "League Ranking",
                      text2: "11th",
                      width: MediaQuery.of(context).size.width * 0.15),
                  const SizedBox(height: 40),
                  AchievementRow(
                      customPink: customPink,
                      customYellow: customYellow,
                      context: context,
                      text: "Experience",
                      text2: "2000 xp",
                      width: MediaQuery.of(context).size.width * 0.26),
                  const SizedBox(height: 40),
                  AchievementRow(
                      customPink: customPink,
                      customYellow: customYellow,
                      context: context,
                      text: "# of wins",
                      text2: "3",
                      width: MediaQuery.of(context).size.width * 0.305),
                  CustomDivider(context: context),
                  CustomTitleText(
                      customYellow: customYellow,
                      text: 'Past featured performances'),
                  PastPerformance(
                      context: context,
                      text: 'Priya in International\nDebating League',
                      image: 'images/past_performances.png'),
                  const SizedBox(height: 20),
                  PastPerformance(
                      context: context,
                      text: 'Akshay in Global\nQuizzing Finals',
                      image: 'images/past_performances.png'),
                  SeeMore(customYellow: customYellow),
                  CustomDivider(context: context),
                  CustomTitleText(
                      customYellow: customYellow,
                      text: 'Live clan activities on platform'),
                  LiveActivity(
                      context: context,
                      text: 'Live trading\nchampionship',
                      image: 'images/clan_activity.jpg'),
                  LiveActivity(
                      context: context,
                      text: 'Treasure hunt',
                      image: 'images/clan_activity.jpg'),
                  SeeMore(customYellow: customYellow),
                  CustomDivider(context: context),
                  CustomTitleText(
                      customYellow: customYellow, text: 'Clan discussions'),
                  ClanDiscussion(
                      customPink: customPink,
                      text1: 'General thread:',
                      text2: '15 unread messages'),
                  ClanDiscussion(
                      customPink: customPink,
                      text1: '(live) Anyone enthu for trading league...',
                      text2: '10 unread messages'),
                  ClanDiscussion(
                      customPink: customPink,
                      text1: '(live) Anyone enthu for trading league...',
                      text2: '10 unread messages'),
                  SeeMore(customYellow: customYellow),
                  CustomDivider(context: context),
                  CustomTitleText(
                      customYellow: customYellow, text: 'Clan members'),
                  const ClanMember(
                      name: 'Lorem ipsum - Clan head',
                      image: 'images/profile.png'),
                  const ClanMember(
                      name: 'Lorem ipsum - Debating Sensei',
                      image: 'images/profile.png'),
                  CustomDivider(context: context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
