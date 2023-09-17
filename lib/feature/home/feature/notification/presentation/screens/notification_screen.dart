import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jobspot/common/widgets/enum/load_status_enum.dart';
import 'package:jobspot/common/widgets/stateless/avatar_company.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/app_color.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/design/spaces.dart';
import 'package:jobspot/design/typography.dart';
import 'package:jobspot/feature/home/feature/company/presentation/screens/company_detail_screen.dart';
import 'package:jobspot/feature/home/feature/notification/data/models/notification_model.dart';
import 'package:jobspot/feature/home/feature/notification/presentation/bloc/notification_bloc.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final PagingController<int, NotificationModel> pagingController =
      PagingController(firstPageKey: 0);
  var bloc = NotificationBloc();
  @override
  void initState() {
    bloc = BlocProvider.of<NotificationBloc>(context);
    pagingController.addPageRequestListener((pageKey) {
      bloc.add(GetListNotificationRequested(pageKey));
    });
    super.initState();
  }

  @override
  void dispose() {
    bloc.add(const ResetLastDocumentRequested());
    print('sdsds');
    pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotificationBloc, NotificationState>(
      listenWhen: (previous, current) =>
          previous.notifications != current.notifications,
      listener: (context, state) {
        if (state.updateSuccess) {
          if (state.notification != null) {
            var index = pagingController.itemList!
                .indexWhere((element) => element.id == state.notification!.id);
            if (index != -1) {
              pagingController.itemList![index] = state.notification!;
            }
          } else {
            bloc.add(const ResetLastDocumentRequested());

            pagingController.refresh();
          }
        }

        if (!state.updateSuccess) {
          if (state.isLastPage()) {
            pagingController.appendLastPage(state.notifications);
            bloc.add(const ResetLastDocumentRequested());
          } else {
            final next = 1 + state.notifications.length;
            pagingController.appendPage(state.notifications, next);
          }
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
              backgroundColor: AppColor.backgroundWhite,
              appBar: AppBar(
                actions: [
                  GestureDetector(
                    onTap: state.unReadCount > 0
                        ? () {
                            bloc.add(
                                const UpdateReadAllNotificationRequested());
                          }
                        : null,
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: IconWidget(
                          icon: AppAsset.readAll,
                          size: 36.r,
                          color: state.unReadCount > 0
                              ? AppColor.black
                              : AppColor.unSelected),
                    ),
                  )
                ],
                title: Text(
                  state.unReadCount > 0
                      ? "Notification (${state.unReadCount})"
                      : 'Notification',
                  style: TxtStyles.semiBold20,
                ),
                centerTitle: true,
              ),
              body: RefreshIndicator(
                onRefresh: () async {
                  bloc.add(const ResetLastDocumentRequested());

                  pagingController.refresh();
                },
                child: PagedListView<int, NotificationModel>.separated(
                  separatorBuilder: (context, index) => const Divider(
                    height: 0,
                    indent: 0,
                    color: AppColor.textGreyColor,
                  ),
                  pagingController: pagingController,
                  builderDelegate: PagedChildBuilderDelegate<NotificationModel>(
                    noItemsFoundIndicatorBuilder: (context) =>
                        const TopCompanyEmpty(),
                    firstPageProgressIndicatorBuilder: (context) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: const TopCompanyCardShimmer(),
                    ),
                    itemBuilder: (context, item, index) {
                      return NotificationCard(
                        bloc: bloc,
                        item: item,
                      );
                    },
                  ),
                ),
              )),
        );
      },
    );
  }
}

class NotificationCard extends StatelessWidget {
  final NotificationModel item;
  final NotificationBloc bloc;
  const NotificationCard({
    super.key,
    required this.item,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: item.status
          ? () {
              bloc.add(UpdateReadNotificationRequested(item));
            }
          : null,
      child: Container(
        color: item.status ? AppColor.white : AppColor.backgroundWhite,
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                AvatarCompany(
                  avatarUrl: item.imageCompany,
                ),
                spaceW16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: item.status
                            ? TxtStyles.semiBold14
                            : TxtStyles.regular14
                                .copyWith(color: AppColor.black),
                      ),
                      spaceH4,
                      Text(
                        item.body,
                        style: item.status
                            ? TxtStyles.semiBold12
                                .copyWith(color: AppColor.textGreyColor)
                            : TxtStyles.regular12
                                .copyWith(color: AppColor.textGreyColor),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      spaceH4,
                      Text(
                        AppFormat.parseDateTime(item.sendDateTime.toString()),
                        style: item.status
                            ? TxtStyles.semiBold12
                                .copyWith(color: AppColor.textGreyColor)
                            : TxtStyles.regular12
                                .copyWith(color: AppColor.textGreyColor),
                      )
                    ],
                  ),
                )
              ],
            ),
            spaceH16,
          ],
        ),
      ),
    );
  }
}
