import 'dart:math';
import 'package:my_profile/config/portfolio_settings.dart';
import 'package:my_profile/config/project_colors.dart';
import 'package:my_profile/extensions/hover_extensions.dart';
import 'package:my_profile/models/portfolio_projects_model.dart';
import 'package:my_profile/widgets/common/custom_icon_button.dart';
import 'package:my_profile/widgets/common/webpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (_, orientation) => Webpage(
        content: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 64), //TODO calculate somehow depending on height of _LandscapePortfolioContent ?
                _PortfolioContent(orientation: orientation),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PortfolioContent extends StatelessWidget {
  final Orientation orientation;

  const _PortfolioContent({@required this.orientation, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: orientation == Orientation.landscape ? WrapAlignment.start : WrapAlignment.center,
      runAlignment: WrapAlignment.start,
      spacing: 64,
      runSpacing: 64,
      children: <Widget>[
        for (PortfolioProjectsModel project in PortfolioSettings.projects)
          _PortfolioTile(
            assetPath: project.iconAssetPath,
            title: project.title,
            onTap: () => showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: ProjectColors.almostWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              context: context,
              builder: (_) => SingleChildScrollView(
                child: _ProjectSheet(
                  title: project.title,
                  description: project.description,
                  imageAssetPaths: project.screenshotAssetPaths,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _PortfolioTile extends StatelessWidget {
  final String title;
  final String assetPath;
  final Function() onTap;

  const _PortfolioTile({
    @required this.assetPath,
    @required this.title,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final size = constraints.maxWidth < 340 ? 120.0 : 150.0;

        final widget = GestureDetector(
          onTap: onTap,
          child: Container(
            child: Column(
              children: <Widget>[
                Image.asset(
                  assetPath,
                  height: size,
                  width: size,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        );

        return kIsWeb ? widget.showCursorOnHover : widget;
      },
    );
  }
}

class _ProjectSheet extends StatelessWidget {
  static const _padding = 32.0;
  static const _titleFontSize = 48.0;
  static const _desciptionTextWidth = 400.0;
  static const _imageWidth = 300.0;

  final String title;
  final String description;
  final List<String> imageAssetPaths;

  const _ProjectSheet({
    @required this.title,
    @required this.description,
    @required this.imageAssetPaths,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        // determine number of images to show
        int numberOfImagesToShow = 0;
        if (constraints.maxWidth >= 1450) {
          numberOfImagesToShow = 3;
        } else if (constraints.maxWidth >= 1080) {
          numberOfImagesToShow = 2;
        } else if (constraints.maxWidth >= 780) {
          numberOfImagesToShow = 1;
        }

        // determine available width
        final availableWidth = constraints.maxWidth - 2 * _padding;

        /// determine desciptionTextWidth which is the smaller value of availableWidth and constant _desciptionTextWidth
        final desciptionTextWidth = min(availableWidth, _desciptionTextWidth);

        /// determine a scale factor to scale title font size. this is at most 1.
        final scale = min(availableWidth / _desciptionTextWidth, 1);
        final titleFontSize = scale * _titleFontSize;

        return SafeArea(
          child: Stack(
            children: <Widget>[
              if (!kIsWeb)
                Positioned(
                  right: _padding,
                  top: _padding,
                  child: GestureDetector(
                    child: Icon(
                      Icons.close,
                      color: Theme.of(context).accentColor,
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ),
              Container(
                padding: EdgeInsets.all(_padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (kIsWeb)
                      CustomIconButton(
                        icon: Icons.arrow_back,
                        onPressed: () => Navigator.of(context).pop(),
                        color: Theme.of(context).accentColor,
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            if (kIsWeb) SizedBox(height: 48),
                            Text(
                              title,
                              style: TextStyle(
                                fontSize: titleFontSize,
                                fontWeight: FontWeight.bold,
                                color: ProjectColors.lightBlack,
                              ),
                            ),
                            SizedBox(height: 32),
                            Container(
                              width: desciptionTextWidth,
                              child: Text(
                                description,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ProjectColors.lightBlack,
                                ),
                                maxLines: 50,
                              ),
                            ),
                          ],
                        ),
                        if (kIsWeb && numberOfImagesToShow > 0)
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                for (int i = 0; i < numberOfImagesToShow; i++)
                                  imageAssetPaths.length > i
                                      ? Image.asset(
                                          imageAssetPaths[i],
                                          width: _imageWidth,
                                        )
                                      : Placeholder(fallbackHeight: 650, fallbackWidth: _imageWidth)
                              ],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
