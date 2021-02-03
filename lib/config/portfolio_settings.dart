import 'package:my_profile/models/portfolio_projects_model.dart';

class PortfolioSettings {
  static const projects = const [
    PortfolioProjectsModel(
      title: 'Blogging',
      description:
          'A Blogging app made by flutter and dart to create and post Blogs. User can also read others Blog and like it by hitting on thumbs up.',
      iconAssetPath: 'assets/images/common/Blogging_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/Blogging/02.jpeg',
        'assets/images/portfolio/Blogging/03.jpeg',
        'assets/images/portfolio/Blogging/04.jpeg',
      ],
    ),
    PortfolioProjectsModel(
      title: 'About Me',
      description:
          'Personal website and mobile application containing my ré­su­mé as well as projects made using Flutter. Responsive design, optimized for multiple devices, screen sizes and orientations. Thus content is shown based on the space available while behavior is adaptive across platforms, e.g. displays mouse hand on web or inkwell button on mobile. The ré­su­mé is particularly noteworthy as it was created using 100% Flutter code.',
      iconAssetPath: 'assets/images/common/aboutme_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/aboutme/01.png',
        'assets/images/portfolio/aboutme/02.png',
        'assets/images/portfolio/aboutme/03.png',
      ],
    ),
    PortfolioProjectsModel(
      title: 'Todo',
      description:
          'An application which allows the user to keep track of their todos. These todos are saved locally to the user\'s device using Hive. The app supports both light and dark mode and is localized into three languages: English, German and Polish. A friendly greeting is displayed to the user depending on the time of day. Provider is used for dependency injection, while MobX is used as the project\'s state management solution.',
      iconAssetPath: 'assets/images/common/todo_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/todo/screenshot1.jpeg',
        'assets/images/portfolio/todo/screenshot2.jpeg',
        'assets/images/portfolio/todo/screenshot3.jpeg',
      ],
    ),
    PortfolioProjectsModel(
      title: 'Slider',
      description:
          'This App is for showing slider after opening the app. It is having 3 slides with some text and also there is option to skip the slide to go to directly to "Get Started" slide. By clicking on Get started we can land in to Home page.',
      iconAssetPath: 'assets/images/common/slider_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/slider/02.jpeg',
        'assets/images/portfolio/slider/03.jpeg',
        'assets/images/portfolio/slider/01.jpeg',
      ],
    ),

    PortfolioProjectsModel(
      title: 'My-Quiz',
      description:
          'A fun quiz application where the user is presented a series of questions and must answer either true or false. Each game consists of ten questions (taken from opentdb.com\'s API), with the result displayed afterwards. setState is used as the project\'s state management solution.',
      iconAssetPath: 'assets/images/common/quiz_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/My-Quiz/01.jpeg',
        'assets/images/portfolio/My-Quiz/02.jpeg',
        'assets/images/portfolio/My-Quiz/03.jpeg',
      ],
    ),
    PortfolioProjectsModel(
      title: 'Google Sheet',
      description:
          'This is a demo app made by flutter. By using this app we can push the data from app to google sheet and also fetch the data from google sheet to display it to the app.',
      iconAssetPath: 'assets/images/common/google-sheet-app-icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/googlesheet/01.jpeg',
        'assets/images/portfolio/googlesheet/03.jpeg',
        'assets/images/portfolio/googlesheet/02.jpeg',
      ],
    ),
  ];
}
