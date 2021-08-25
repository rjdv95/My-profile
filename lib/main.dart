import 'package:flutter/material.dart';
import 'package:my_profile/config/project_colors.dart';
import 'package:my_profile/config/route_names.dart';
import 'package:my_profile/widgets/home_page/home_page.dart';
import 'package:my_profile/widgets/portfolio_page/portfolio_page.dart';
import 'package:my_profile/widgets/resume_page/resume_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        accentColor: ProjectColors.orange,
        fontFamily: 'Rubik',
        splashColor: ProjectColors.pink,
      ),

      routes: {
        RouteNames.home: (_) => HomePage(),
        RouteNames.PROJECTS: (_) => PortfolioPage(),
        RouteNames.RESUME: (_) => ResumePage(),
      },
    );
  }
}
