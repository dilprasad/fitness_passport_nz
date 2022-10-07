import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../components/label_widget.dart';
import '../../../utils/themes/colors.dart';
import '../../../utils/themes/text_styles.dart';

class ActivitiesTimeLineWidget extends StatelessWidget {
  const ActivitiesTimeLineWidget({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    Widget shadeWidget() => ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.mirror,
                colors: [Colors.red, Colors.black]).createShader(bounds);
          },
          blendMode: BlendMode.color,
          child: const SizedBox(height: 40.0, width: 40.0),
        );

    Widget timeLineListItem(int index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Label(
              text: 'Title goes here',
              fontStyle: tSubTitle1,
              textColor: CustomColors.primaryBlack,
            ),
            const SizedBox(height: 5.0),
            Label(
              text: 'Timeline Event $index',
              fontStyle: tSubTitle2,
              textColor: CustomColors.primaryBlack,
            ),
            const SizedBox(height: 5.0),
            const Label(
              text: 'tags goes here',
              fontStyle: tSmallText,
              textColor: CustomColors.primaryBlue,
            ),
          ],
        );

    return FixedTimeline.tileBuilder(
      theme: TimelineTheme.of(context).copyWith(
        nodePosition: 0.1,
        connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
              thickness: 2.0,
              color: Colors.grey,
            ),
        indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
              size: 15.0,
              position: 0.25,
              color: Colors.grey,
            ),
      ),
      builder: TimelineTileBuilder(
        itemCount: 5,
        indicatorBuilder: (_, index) => Indicator.dot(),
        startConnectorBuilder: (_, index) => Connector.dashedLine(),
        endConnectorBuilder: (_, index) => Connector.dashedLine(),
        contentsAlign: ContentsAlign.basic,
        oppositeContentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Label(
            text: '0${index + 1}',
            textColor: CustomColors.primaryBlack,
            fontStyle: tSubTitle2,
          ),
        ),
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(12.0),
          child: index > 3 ? shadeWidget() : timeLineListItem(index),
        ),
      ),
    );
  }
}
