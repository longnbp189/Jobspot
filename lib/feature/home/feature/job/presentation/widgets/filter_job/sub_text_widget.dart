part of '../../screens/filter_job_screen.dart';


class SubTextWidget extends StatelessWidget {
  const SubTextWidget({
    super.key,
    required this.subText,
    required this.jobBloc,
    required this.index,
  });

  final String subText;
  final JobBloc jobBloc;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              border: Border.all(color: AppColor.secondary)),
          child: Row(
            children: [
              Text(
                subText,
                style: TxtStyles.semiBold14,
              ),
              spaceW8,
              GestureDetector(
                  onTap: () {
                    jobBloc.state.clearSubText(jobBloc, index);
                  },
                  child: Icon(
                    Icons.close,
                    size: 28.r,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}