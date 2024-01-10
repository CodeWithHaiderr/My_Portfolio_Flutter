
import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen.dart';
import '../components/exp_hightlight_info.dart';
import '../components/home_banner.dart';
import '../components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
        children:  [
           HomeBanner(),
           ExperienceHightlightsInfo(),
           MyProjects(),

        ],
    );
  }
}












