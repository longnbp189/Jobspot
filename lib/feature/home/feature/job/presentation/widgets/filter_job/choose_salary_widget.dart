part of '../../screens/filter_job_screen.dart';

class ChooseSalaryWidget extends StatelessWidget {
  const ChooseSalaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final jobBloc = context.read<JobBloc>();
    return BlocBuilder<JobBloc, JobState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(12.r))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose type',
                    style: TxtStyles.semiBold20,
                  ),
                  GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: Icon(
                        Icons.close,
                        size: 32.r,
                      )),
                ],
              ),
              spaceH16,

              const RangeSliderWidget(),
              spaceH16,
              spaceH16,
              spaceH16,
              spaceH16,
              spaceH16,
              spaceH16,
              spaceH16,

              // ListView.builder(
              //     physics: const NeverScrollableScrollPhysics(),
              //     padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
              //     shrinkWrap: true,
              //     itemBuilder: (context, index) => GestureDetector(
              //           onTap: () {
              //             jobBloc.add(GetTextTypeRequested(typeText[index]));
              //             // Future.delayed(const Duration(milliseconds: 500), () {
              //             context.pop();
              //             // });
              //           },
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               spaceH8,
              //               Text(
              //                 typeText[index],
              //                 style: TxtStyles.semiBold16,
              //               ),
              //               spaceH8,
              //               const Divider(
              //                 color: AppColor.backgroundWhite,
              //               ),
              //             ],
              //           ),
              //         ),
              //     itemCount: typeText.length)
            ],
          ),
        );
      },
    );
  }
}

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({
    super.key,
  });

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  double _lowerValue = 300;
  double _upperValue = 5000;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: FlutterSlider(
                values: [_lowerValue, _upperValue],
                rangeSlider: true,
                max: 10000,
                min: 0,
                jump: true,
                handlerAnimation: const FlutterSliderHandlerAnimation(
                  scale: 1.0, // Set the scale to 1.0 to disable animations
                ),
                handlerHeight: 30.r,
                trackBar: const FlutterSliderTrackBar(
                  inactiveTrackBar:
                      BoxDecoration(color: AppColor.backgroundChip),
                  activeTrackBarHeight: 2.5,
                  activeTrackBar: BoxDecoration(color: AppColor.secondary),
                ),
                tooltip: FlutterSliderTooltip(
                  disabled: true,
                ),
                handler: FlutterSliderHandler(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.secondary, width: 2.5),
                      color: AppColor.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                rightHandler: FlutterSliderHandler(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.secondary, width: 2.5),
                      color: AppColor.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                disabled: false,
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  _lowerValue = lowerValue;
                  _upperValue = upperValue;
                  setState(() {});
                },
              ),
            ),
            Positioned(
              bottom: 0,
              left: _lowerValue / 10000 * 300, // Adjust the position as needed
              child: Text(
                '\$${_lowerValue.toInt()}',
                style: TxtStyles.semiBold14,
              ),
            ),
            Positioned(
              bottom: 0,

              left: _upperValue / 10000 * 300, // Adjust the position as needed
              child: Text(
                '\$${_upperValue.toInt()}',
                style: TxtStyles.semiBold14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
