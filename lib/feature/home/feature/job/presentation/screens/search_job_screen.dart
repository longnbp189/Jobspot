import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/router/app_router_name.dart';

class SearchJobScreen extends StatefulWidget {
  const SearchJobScreen({super.key});

  @override
  State<SearchJobScreen> createState() => _SearchJobScreenState();
}

class _SearchJobScreenState extends State<SearchJobScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Job',
            style: TxtStyles.semiBold20,
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onChanged: (value) {
                              // bloc.add(SearchCompanyRequested(value));
                            },
                            controller: _searchController,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () => _searchController.clear(),
                                child: const Icon(
                                  Icons.close,
                                  color: AppColor.primary,
                                  size: 24,
                                ),
                              ),
                              hintText: 'Company name',
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.r),
                                borderSide:
                                    const BorderSide(color: AppColor.primary),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.r),
                                borderSide:
                                    const BorderSide(color: AppColor.primary),
                              ),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: AppColor.primary,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                        spaceW8,
                        InkWell(
                          onTap: () =>
                              context.pushNamed(AppRouterName.filterJob),
                          child: IconWidget(
                            icon: AppAsset.filter,
                            size: 52.r,
                          ),
                        )
                      ],
                    ),
                    const Text('Khu vực'),
                    const Text('Kinh nghiệm'),
                    const Text('Ngành nghề'),
                    const Text('Job Type'),
                    const Text('Salary'),
                  ],
                ))));
  }
}
