import 'package:my_profile/models/portfolio_experience_model.dart';
import 'package:my_profile/models/project_data_model.dart';
import 'package:flutter/material.dart';

class ResumeSettings {
  static const summary =
      'More than 3.8 years of extensive experience in designing and developing WEBSITES and MOBILE APPLICATION using HTML, CSS, JAVASCRIPT, FLUTTER, React. ';

  static const skills = const [
    'Dart',
    'Flutter',
    'Javascript',
    'React',
    'CSS',
    'Html',
    'Wordpress',
    'Git',
    'Provider',
    'MobX',
    'CI/CD',
    'UI/UX',
    'BLoC',
    'SQLite',
    'Firebase',
    'Mongodb',
    'MySql',
    'Python',
    'R'
  ];

  static const List<ProjectDataModel> projects = const [
    ProjectDataModel(
      projectTitle: 'eduhilfe',
      bulletPoints: [
        'This Website is for asking questions and giving answers to any questions asked by any other user. ',
        'Wordpress are used as a CMS.',
        'Handling all the administrative work.',
        'Enhancement of the website.',
        'Customization of the Website.',
        'Bug fixing.',
        'Taking care of all the updates time to time.',
        'Establishing workflows, best practices and writing documentation.',
        'All the work related to Hostings',
      ],
      assetPath: 'assets/images/common/edu-inta-profile.png',
    ),
     ProjectDataModel(
       projectTitle: 'Blogging',
       bulletPoints: [
         'App to create new blog.',
         'User can see others blog and there is option to like the blog.',
         'User can write as many words they want.',
         'Firebase for storing blogs data and for authentication .',
         'User can search others blog by either authors name or by title of the blog.',

       ],
       assetPath: 'assets/images/common/Blogging_app_icon.png',
     ),
    ProjectDataModel(
      projectTitle: 'About Me',
      bulletPoints: [
        'Personal website and mobile application.',
        'Responsive design, optimized for multiple devices, screen sizes and orientations.',
        'Adaptive behavior per platform, e.g. mouse hand on web, inkwell button on mobile.',
      ],
      assetPath: 'assets/images/common/profile-icon.png',
    ),
     ProjectDataModel(
       projectTitle: 'Todo',
       bulletPoints: [
         'App to organize and keep track of tasks.',
         'Persists data to device using Hive.',
         'Supports both light and dark modes.',
         'Localized into two languages.',
         'Displays animated chart of completed tasks.',
       ],
       assetPath: 'assets/images/common/todo_app_icon.png',
     ),

  ];

  static const List<PortfolioExperienceModel> jobs = const [
    PortfolioExperienceModel(
      icon: Icons.code,
      title: 'App Developer',
      company: 'Droidsolutions, Leipzig',
      subtitle: 'May 2021 - present',
    ),
    PortfolioExperienceModel(
      icon: Icons.code,
      title: 'Web Developer',
      company: 'eduhilfe',
      subtitle: 'April 2020 - present',
    ),
    PortfolioExperienceModel(
      icon: Icons.code,
      title: 'Programmer Analyst',
      company: 'Cognizant Technology Solutions, India',
      subtitle: 'Mar 2016 - Sept 2019, Pune, India',
    ),
  ];

  static const footnote = 'Made with Flutter';
}
