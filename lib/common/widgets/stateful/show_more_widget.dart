import 'package:flutter/material.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';

class ShowMoreWidget extends StatefulWidget {
  final String text;

  const ShowMoreWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<ShowMoreWidget> createState() => _ShowMoreWidgetState();
}

class _ShowMoreWidgetState extends State<ShowMoreWidget> {
  bool flag = true;
  bool isShort = false;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 300) {
      isShort = false;
    } else {
      isShort = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return isShort
        ? Text(
            widget.text,
            style: TxtStyles.regular14,
          )
        : GestureDetector(
            onTap: () {
              setState(() {
                flag = !flag;
              });
            },
            child: Column(
              children: <Widget>[
                AnimatedCrossFade(
                  firstChild: Text(
                    widget.text,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TxtStyles.regular14,
                  ),
                  secondChild: Text(
                    widget.text,
                    style: TxtStyles.regular14,
                  ),
                  crossFadeState: flag
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration:
                      const Duration(milliseconds: 300), // Animation duration
                ),
                spaceH8,
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    flag ? "Show more" : "Show less",
                    textAlign: TextAlign.center,
                    style:
                        TxtStyles.semiBold16.copyWith(color: AppColor.primary),
                  ),
                ),
              ],
            ),
          );
  }
}
