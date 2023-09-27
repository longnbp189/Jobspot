part of '../screens/company_detail_screen.dart';

class RecruitmentNewsBody extends StatelessWidget {
  const RecruitmentNewsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final companyBloc = context.read<CompanyBloc>();
    final jobBloc = context.read<JobBloc>();
    final authBloc = context.read<AuthBloc>();

    companyBloc.add(const CompanyEvent.getJobSameCompany());

    return ColoredBox(
        color: AppColor.backgroundWhite,
        child: BlocBuilder<CompanyBloc, CompanyState>(
          buildWhen: (previous, current) =>
              previous.jobSameCompanies != current.jobSameCompanies,
          builder: (context, state) {
            print('22222 ${state.isShimmer}');
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 16.h, bottom: 100.h),
              child: state.isShimmer
                  ? const TopCompanyCardShimmer()
                  : state.jobSameCompanies.isNotEmpty
                      ? ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => JobCard(
                              item: state.jobSameCompanies[index],
                              jobBloc: jobBloc,
                              authBloc: authBloc),
                          separatorBuilder: (context, index) => spaceH16,
                          itemCount: state.jobSameCompanies.length)
                      : const EmptyJobDetail(),
            );
          },
        ));
  }
}
