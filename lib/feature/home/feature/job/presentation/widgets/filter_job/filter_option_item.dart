part of '../../screens/filter_job_screen.dart';

class FilterOptionItem extends StatelessWidget {
  final FilterItem item;
  final BuildContext parentContext;
  final int index;
  final JobBloc jobBloc;

  const FilterOptionItem({
    super.key,
    required this.item,
    required this.parentContext,
    required this.jobBloc,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: parentContext,
        builder: (context) => BlocProvider.value(
          value: jobBloc,
          child: item.widget,
        ),
      ),
      child: BlocBuilder<JobBloc, JobState>(
        builder: (context, state) {
          var subText = state.getSubText(index);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconWidget(
                    icon: item.icon,
                    size: 32.r,
                    color: AppColor.unSelected,
                  ),
                  spaceW8,
                  Expanded(
                    child: Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TxtStyles.regular18,
                    ),
                  ),
                ],
              ),
              spaceH8,
              if (subText.isNotEmpty)
                SubTextWidget(index: index, subText: subText, jobBloc: jobBloc)
            ],
          );
        },
      ),
    );
  }
}
