part of '../screens/company_detail_screen.dart';

class AboutCompanyBody extends StatelessWidget {
  final CompanyModel companyModel;

  const AboutCompanyBody({
    super.key,
    required this.companyModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceH16,
            Text(
              'Company introduction',
              style: TxtStyles.extraBold16,
            ),
            spaceH8,
            ShowMoreWidget(text: companyModel.aboutCompany),
            const Divider(),
            spaceH8,
            Text(
              'Company address',
              style: TxtStyles.extraBold16,
            ),
            spaceH8,
            Text(
              companyModel.address,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TxtStyles.regular14,
            ),
          ],
        ),
      ),
    );
  }
}
