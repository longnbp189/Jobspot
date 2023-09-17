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
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          jobBloc.add(GetTextExperienceRequested(
                              experienceText[index]));
                          Future.delayed(const Duration(milliseconds: 500), () {
                            context.pop();
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            spaceH8,
                            Text(
                              experienceText[index],
                              style: TxtStyles.semiBold16,
                            ),
                            spaceH8,
                            const Divider(
                              color: AppColor.backgroundWhite,
                            ),
                          ],
                        ),
                      ),
                  itemCount: experienceText.length)
            ],
          ),
        );
      },
    );
  }
}


List<String> experienceText = [
  'All',
  'Going to work soon',
  'Under one year',
  'One year',
  'Two years',
  'Three years',
  'Four years',
  'Five years',
  'Over 5 years'
];