part of '../../screens/filter_job_screen.dart';

class ChooseExperienceWidget extends StatelessWidget {
  const ChooseExperienceWidget({
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
                    'Choose experience',
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
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          jobBloc.add(GetTextExperienceRequested(
                              experienceTextOption[index]));
                          Future.delayed(const Duration(milliseconds: 500), () {
                            context.pop();
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            spaceH8,
                            Text(
                              experienceTextOption[index],
                              style: TxtStyles.semiBold16,
                            ),
                            spaceH8,
                            const Divider(
                              color: AppColor.backgroundWhite,
                            ),
                          ],
                        ),
                      ),
                  itemCount: experienceTextOption.length)
            ],
          ),
        );
      },
    );
  }
}

List<String> experienceTextOption = [
  'All',
  'Under 1 year',
  '1 year',
  '2 years',
  '3 years',
  '4 years',
  '5 years',
  'Over 5 years'
];
