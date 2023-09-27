part of '../../screens/filter_job_screen.dart';

class ChooseProvinceWidget extends StatefulWidget {
  const ChooseProvinceWidget({
    super.key,
  });

  @override
  State<ChooseProvinceWidget> createState() => _ChooseProvinceWidgetState();
}

class _ChooseProvinceWidgetState extends State<ChooseProvinceWidget> {
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
        buildWhen: (previous, current) =>
            previous.searchProvinces != current.searchProvinces,
        bloc: jobBloc,
        builder: (context, state) {
          return Container(
            height: double.infinity,
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
                      'Choose provinces',
                      style: TxtStyles.semiBold20,
                    ),
                    GestureDetector(
                        onTap: () {
                          // jobBloc.add(const GetTextProvinceRequested(''));
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
                    jobBloc.add(SearchProvincesRequested(value));
                  },
                  controller: _searchController,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _searchController.clear();
                        jobBloc.add(const SearchProvincesRequested(''));
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
                state.searchProvinces.isEmpty
                    ? Text(
                        'Not found',
                        style: TxtStyles.semiBold16,
                      )
                    : Expanded(
                        child: ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => InkWell(
                                  onTap: () {
                                    jobBloc.add(JobEvent.getDistricts(jobBloc
                                        .state.searchProvinces[index].code));
                                    jobBloc.add(GetTextProvinceRequested(jobBloc
                                        .state.searchProvinces[index].name));

                                    Future.delayed(
                                        const Duration(milliseconds: 500), () {
                                      context.pop();
                                    });
                                    // Future.delayed(
                                    //   const Duration(milliseconds: 500),
                                    //   () {
                                    Future.delayed(
                                        const Duration(milliseconds: 500), () {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        useSafeArea: true,
                                        context: context,
                                        builder: (context) =>
                                            BlocProvider.value(
                                          value: jobBloc,
                                          child: const ChooseDistrictWidget(),
                                        ),
                                      );
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      spaceH8,
                                      Text(
                                        AppFormat.nonUnicode(jobBloc
                                            .state.searchProvinces[index].name),
                                        style: TxtStyles.semiBold16,
                                      ),
                                      spaceH8,
                                      const Divider(
                                        color: AppColor.backgroundWhite,
                                      ),
                                    ],
                                  ),
                                ),
                            itemCount: jobBloc.state.searchProvinces.length),
                      )
              ],
            ),
          );
        },
      ),
    );
  }
}
