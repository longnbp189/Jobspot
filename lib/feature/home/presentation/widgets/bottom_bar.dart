part of '../screen/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  final ValueChanged<int> indexChange;
  const BottomNavBar({super.key, required this.indexChange});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  void _onTabTapped(int index) {
    setState(() {
      widget.indexChange.call(index);
      curentIndex = index;
    });
  }

  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(0.2),
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: IconBottomNarvigationBar(
              title: 'Home',
              iconUrl: curentIndex == 0 ? AppAsset.homeBold : AppAsset.home,
              onPressed: () => _onTabTapped(0),
              isFocus: curentIndex == 0,
            )),
            Expanded(
                child: IconBottomNarvigationBar(
              title: 'CV',
              iconUrl: curentIndex == 1 ? AppAsset.cvBold : AppAsset.cv,
              onPressed: () => _onTabTapped(1),
              isFocus: curentIndex == 1,
            )),
            // const ButtonBetween(),
              Expanded(
                child: IconBottomNarvigationBar(
              title: 'Chat',
              iconUrl: curentIndex == 2 ? AppAsset.messageBold : AppAsset.message,
              onPressed: () => _onTabTapped(2),
              isFocus: curentIndex == 2,
            )),
            Expanded(
                child: IconBottomNarvigationBar(
              title: 'Notification',
              iconUrl: curentIndex == 3? AppAsset.bellBold : AppAsset.bell,
              onPressed: () => _onTabTapped(3),
              isFocus: curentIndex == 3,
            )),
            Expanded(
                child: IconBottomNarvigationBar(
              title: 'Bookmark',
              iconUrl:
                  curentIndex == 4 ? AppAsset.bookmarkBold : AppAsset.bookmark,
              onPressed: () => _onTabTapped(4),
              isFocus: curentIndex == 4,
            )),
          ],
        ));
  }
}
