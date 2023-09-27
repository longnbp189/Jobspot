import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/button_bottom_row.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/auth/feature/login/presentation/bloc/auth_bloc.dart';
import 'package:jobspot/feature/auth/feature/profile/presentation/bloc/profile_bloc.dart';
import 'package:jobspot/feature/home/feature/job/presentation/bloc/job_bloc.dart';
import 'package:jobspot/router/app_router_name.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

part '../widgets/filter_job/filter_option_item.dart';
part '../widgets/filter_job/choose_district_widget.dart';
part '../widgets/filter_job/choose_experience_widget.dart';
part '../widgets/filter_job/choose_job_category_widget.dart';
part '../widgets/filter_job/choose_province_widget.dart';
part '../widgets/filter_job/choose_type_widget.dart';
part '../widgets/filter_job/choose_salary_widget.dart';
part '../widgets/filter_job/filter_item.dart';
part '../widgets/filter_job/sub_text_widget.dart';

class FilterJobScreen extends StatefulWidget {
  const FilterJobScreen({super.key});

  @override
  State<FilterJobScreen> createState() => _FilterJobScreenState();
}

class _FilterJobScreenState extends State<FilterJobScreen> {
  @override
  Widget build(BuildContext context) {
    final jobBloc = context.read<JobBloc>();
    jobBloc
      ..add(const GetProvincesRequested())
      ..add(const GetJobCategoryRequested());
    return BlocConsumer<JobBloc, JobState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            body: SafeArea(
                child: Column(
          children: [
            spaceH8,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () => context.pop(),
                      child: Icon(
                        Icons.close,
                        size: 32.r,
                      )),
                  spaceW8,
                  Text(
                    'Filter',
                    style: TxtStyles.semiBold20,
                  )
                ],
              ),
            ),
            spaceH16,
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => FilterOptionItem(
                      index: index,
                      parentContext: context,
                      jobBloc: jobBloc,
                      item: item[index],
                    ),
                separatorBuilder: (context, index) => const Divider(
                      color: AppColor.backgroundWhite,
                    ),
                itemCount: item.length),
            const Expanded(child: SizedBox()),
            Container(
                padding: EdgeInsets.only(
                    left: 16.w, right: 16.w, top: 16.h, bottom: 32.h),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColor.unSelected.withOpacity(0.4)),
                ),
                child: ButtonBottomRow(
                    isEnable: state.isHasSubText(),
                    onTapLeft: () {
                      jobBloc.state.clearAllSubText(jobBloc);
                      context.pop();
                    },
                    titleLeft: 'Clear filter',
                    onTapRight: state.isHasSubText()
                        ? () {
                            jobBloc.add(SearchJobRequested(state.searchText));

                            context.pop();
                          }
                        : null,
                    titleRight: 'Apply'))
          ],
        )));
      },
    );
  }
}

List<String> typeWorkplaceText = ['All', 'On-site', 'Hybrid', 'Remote'];
