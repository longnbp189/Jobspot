part of '../../screens/filter_job_screen.dart';

class FilterItem {
  final String title;
  final String icon;
  final Widget widget;

  FilterItem({required this.title, required this.icon, required this.widget});
}

List<FilterItem> item = [
  FilterItem(
    title: 'Location',
    icon: AppAsset.location,
    widget: const ChooseProvinceWidget(),
  ),
  FilterItem(
    title: 'Experience',
    icon: AppAsset.experience,
    widget: const ChooseExperienceWidget(),
  ),
  FilterItem(
    title: 'Salary',
    icon: AppAsset.salary,
    widget: const ChooseSalaryWidget(),
  ),
  FilterItem(
    title: 'Job category',
    icon: AppAsset.category,
    widget: const ChooseJobCategoryWidget(),
  ),
  FilterItem(
    title: 'Type',
    icon: AppAsset.type,
    widget: const ChooseTypeWidget(),
  ),
];

class ProfileItem {
  final String title;
  final String icon;
  final void Function(BuildContext context)? ontap;

  ProfileItem({required this.title, required this.icon, this.ontap});
}

List<ProfileItem> itemProfile = [
  ProfileItem(
    title: 'CV configuration',
    icon: AppAsset.setting,
    ontap: (context) => context.pushNamed(AppRouterName.cvConfiguration),
  ),
  ProfileItem(
    title: 'Change Password',
    icon: AppAsset.password,
    ontap: (context) => context.pushNamed(AppRouterName.changePassword),
  ),
  ProfileItem(
    title: 'Log out',
    icon: AppAsset.logout,
    ontap: (context) => BlocProvider.of<AuthBloc>(context).add(Logout()),
  ),
];
