import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/common/widgets/stateful/custom_text_form_field.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
import 'package:jobspot/common/widgets/stateless/shimmer_effect.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/home/feature/cv/data/models/cv_model.dart';
import 'package:jobspot/feature/home/feature/cv/presentation/bloc/cv_bloc.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
part '../widgets/process_dialog.dart';
part '../widgets/cv_card_shimmer.dart';
part '../widgets/cv_empty.dart';
part '../widgets/delete_cv.dart';
part '../widgets/icon_button_cv.dart';
part '../widgets/update_name_cv.dart';
part '../widgets/cv_card.dart';

class CVScreen extends StatelessWidget {
  const CVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLargeFile = false;
    BuildContext? dialogContext;

    final cvBloc = context.read<CvBloc>();
    cvBloc.add(const CvEvent.getListCV());

    return BlocConsumer<CvBloc, CvState>(
      listener: (context, state) {
        if (state.updateSuccess || state.updateMainSuccess) {
          AppFormat.showSnackBar(context, 'Update success', 2);
        }

        if (state.deleteSuccess) {
          AppFormat.showSnackBar(context, 'Delete success', 2);
        }
        if (state.uploadSuccess) {
          AppFormat.showSnackBar(context, 'Upload success', 2);

          cvBloc.add(const CvEvent.getListCV());
        }
        if (state.loadStatus == LoadStatusEnum.loading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              dialogContext = context;

              return Container(
                  color: AppColor.black.withOpacity(0.4),
                  child: const Center(child: CircularProgressIndicator()));
            },
          );
        }
        if (state.loadStatus == LoadStatusEnum.loaded) {
          print('close');
          if (dialogContext != null) {
            Navigator.of(dialogContext!).pop();
          }
        }
      },
      builder: (context, state) {
        print('1111 ${state.isShimmer}');

        return Scaffold(
          backgroundColor: AppColor.backgroundWhite,
          floatingActionButton: state.isShimmer
              ? null
              : FloatingActionButton(
                  heroTag: 'create-cv',
                  backgroundColor: cvBloc.state.isMaxFile()
                      ? AppColor.greyBox
                      : AppColor.primary,
                  onPressed: cvBloc.state.isMaxFile()
                      ? null
                      : () async {
                          if (await AppFormat().checkPermission(context)) {
                            if (context.mounted) {
                              await AppFormat()
                                  .getPdfAndUpload(isLargeFile, context);
                            }
                          }
                        },
                  child: const IconWidget(
                    icon: AppAsset.upload,
                    color: AppColor.white,
                  ),
                ),
          appBar: AppBar(
            title: Text(
              'Manage cv',
              style: TxtStyles.semiBold20,
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
              child: state.isShimmer
                  ? const CvCardShimmer()
                  : state.cvList.isNotEmpty
                      ? CvCard(isLargeFile: isLargeFile)
                      : const CvEmpty(),
            ),
          ),
        );
      },
    );
  }
}
