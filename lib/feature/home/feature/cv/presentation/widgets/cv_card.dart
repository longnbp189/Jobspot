part of '../screens/cv_screen.dart';

class CvCard extends StatelessWidget {
  final bool isLargeFile;
  const CvCard({super.key, required this.isLargeFile});

  @override
  Widget build(BuildContext context) {
    final cvBloc = context.read<CvBloc>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total cv',
              style: TxtStyles.extraBold18,
            ),
            Text('${cvBloc.state.cvList.length}/3', style: TxtStyles.regular16),
          ],
        ),
        spaceH16,
        if (isLargeFile)
          Text(
            'The file size is too large, please upload the file no more than 5 mb',
            style: TxtStyles.regular14.copyWith(color: AppColor.red),
          ),
        ListView.separated(
            separatorBuilder: (context, index) => spaceH16,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cvBloc.state.cvList.length,
            itemBuilder: (context, index) => CvItem(
                  item: cvBloc.state.cvList[index],
                )),
        spaceH16,
        Text(
          'Upload files in PDF format up to 5 MB. Just upload it once and you can use it in your next application. You can only upload up to 3 files',
          style: TxtStyles.regular14,
        )
      ],
    );
  }
}

class CvItem extends StatelessWidget {
  final CVModel item;
  const CvItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final cvBloc = context.read<CvBloc>();

    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PdfViewerScreen(pdfUrl: item.url),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppAsset.pdf,
                  height: 52.r,
                  width: 52.r,
                ),
                spaceW8,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: TxtStyles.semiBold14,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      spaceH4,
                      Row(
                        children: [
                          Text(
                            AppFormat.converByte(item.size),
                            style: TxtStyles.regular14
                                .copyWith(color: AppColor.textGreyColor),
                          ),
                          Text(' . ',
                              style: TxtStyles.regular14
                                  .copyWith(color: AppColor.textGreyColor)),
                          Text(
                              AppFormat.parseFormatDateAndTimeNoti(
                                  item.uploadDate.toString()),
                              style: TxtStyles.regular14
                                  .copyWith(color: AppColor.textGreyColor)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            spaceH8,
            Row(
              children: [
                IconButtonCV(
                    onTap: () {
                      cvBloc.add(CvEvent.getCvDetail(item));
                      showDialog(
                        context: context,
                        builder: (context) {
                          return UpdateNameCv(name: item.name, cvBloc: cvBloc);
                        },
                      );
                    },
                    icon: AppAsset.edit,
                    colorIcon: AppColor.black,
                    colorBackground: AppColor.backgroundChip.withOpacity(0.4)),
                spaceW8,
                IconButtonCV(
                    onTap: () async {
                      cvBloc.add(CvEvent.getCvDetail(item));
                      if (await AppFormat().checkPermission(context)) {
                        if (context.mounted) {
                          AppFormat.showSnackBar(
                              context, 'Start downloading', 1);
                        }
                        cvBloc.add(CvEvent.downloadCV(item));
                      }
                    },
                    icon: AppAsset.download,
                    colorIcon: AppColor.black,
                    colorBackground: AppColor.backgroundChip.withOpacity(0.4)),
                const Expanded(child: SizedBox.shrink()),
                IconButtonCV(
                    onTap: () {
                      cvBloc.add(CvEvent.getCvDetail(item));
                      showDialog(
                        context: context,
                        builder: (context) {
                          return DeleteCv(name: item.name, cvBloc: cvBloc);
                        },
                      );
                    },
                    icon: AppAsset.trash,
                    colorIcon: AppColor.red,
                    colorBackground: AppColor.red.withOpacity(0.1)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PdfViewerScreen extends StatefulWidget {
  final String pdfUrl;

  const PdfViewerScreen({super.key, required this.pdfUrl});

  @override
  _PdfViewerScreenState createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer', style: TxtStyles.semiBold18),

      ),
      body: Center(
          child: const PDF().cachedFromUrl(
        widget.pdfUrl,
        placeholder: (progress) => const Center(child: CircularProgressIndicator()),
        errorWidget: (error) => Center(child: Text(error.toString())),
      )),
    );
  }
}
