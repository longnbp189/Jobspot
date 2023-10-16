part of '../screen/home_screen.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    super.key,
    required this.company,
  });
  final CompanyModel company;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 70,
      // height: 100,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r), color: AppColor.white),
      child: Column(children: [
        AvatarCompany(
          sizeAvatar: 72.r,
          avatarUrl: company.image,
        ),
        spaceH16,
        Text(
          company.displayName,
          style: TxtStyles.extraBold16,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        spaceH8,
        Text(
          company.type,
          style: TxtStyles.extraBold14.copyWith(fontWeight: FontWeight.normal),
          overflow: TextOverflow.ellipsis,
        ),
        // spaceH16,
        // Container(
        //   padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        //   decoration: BoxDecoration(
        //       color: AppColor.backgroundChip.withOpacity(0.4),
        //       borderRadius: BorderRadius.circular(8.r)),
        //   child: Text(
        //     '36 Jobs',
        //     style: TxtStyles.regular14,
        //   ),
        // ),
        // spaceH16,
        // InkWell(
        //   onTap: () {},
        //   child: Container(
        //     alignment: Alignment.bottomCenter,
        //     padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        //     decoration: BoxDecoration(
        //         color: AppColor.backgroundChip.withOpacity(0.4),
        //         borderRadius: BorderRadius.circular(8.r)),
        //     child: Text(
        //       '+ Follow',
        //       style: TxtStyles.semiBold14,
        //     ),
        //   ),
        // ),
      ]),
    );
  }
}
