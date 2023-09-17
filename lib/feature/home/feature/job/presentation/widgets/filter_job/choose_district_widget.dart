part of '../../screens/filter_job_screen.dart';


class ChooseDistrictWidget extends StatefulWidget {
  const ChooseDistrictWidget({
    super.key,
  });

  @override
  State<ChooseDistrictWidget> createState() => _ChooseDistrictWidgetState();
}

class _ChooseDistrictWidgetState extends State<ChooseDistrictWidget> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var jobBloc = context.read<JobBloc>();

    return WillPopScope(
      onWillPop: () async => false,
      child: BlocBuilder<JobBloc, JobState>(
        builder: (context, state1) {
          return Container(
            padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
            decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(12.r))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose districts',
                      style: TxtStyles.semiBold20,
                    ),
                    GestureDetector(
                        onTap: () {
                          jobBloc.add(const GetTextDistrictRequested(''));
                          context.pop();
                        },
                        child: Icon(
                          Icons.close,
                          size: 32.r,
                        )),
                  ],
                ),
                spaceH16,
                TextFormField(
                  onChanged: (value) {
                    jobBloc.add(SearchDistrictsRequested(value));
                  },
                  controller: _searchController,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _searchController.clear();
                        jobBloc.add(const SearchDistrictsRequested(''));
                      },
                      child: const Icon(
                        Icons.close,
                        color: AppColor.primary,
                        size: 24,
                      ),
                    ),
                    hintText: 'Find...',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColor.primary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColor.primary),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColor.primary,
                      size: 24,
                    ),
                  ),
                ),
                spaceH8,
                Expanded(
                  child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              // jobBloc.add(JobEvent.getDistricts(state.provinces[index].code));
                              jobBloc.add(GetTextDistrictRequested(
                                  state1.searchDistricts[index].name));

                              context.pop();
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                spaceH8,
                                Text(
                                  state1.searchDistricts[index].name,
                                  style: TxtStyles.semiBold16,
                                ),
                                spaceH8,
                                const Divider(
                                  color: AppColor.backgroundWhite,
                                ),
                              ],
                            ),
                          ),
                      itemCount: state1.searchDistricts.length),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}