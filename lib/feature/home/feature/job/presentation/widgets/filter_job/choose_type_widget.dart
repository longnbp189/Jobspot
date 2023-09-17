part of '../../screens/filter_job_screen.dart';

class ChooseTypeWidget extends StatelessWidget {
  const ChooseTypeWidget({
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
          child: Wrap(
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
              ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                        height: 0,
                        color: AppColor.backgroundWhite,
                      ),
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          jobBloc.add(GetTextTypeRequested(AppFormat.typeText[index]));
                          // Future.delayed(const Duration(milliseconds: 500), () {
                          context.pop();
                          // });
                        },
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                spaceH16,
                                Text(
                                AppFormat.  typeText[index],
                                  style: TxtStyles.semiBold16,
                                ),
                                spaceH16,
                              ],
                            ),
                            const Expanded(child: SizedBox())
                          ],
                        ),
                      ),
                  itemCount: AppFormat.typeText.length)
            ],
          ),
        );
      },
    );
  }
}

