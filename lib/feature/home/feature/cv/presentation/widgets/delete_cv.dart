part of '../screens/cv_screen.dart';

class DeleteCv extends StatelessWidget {
  final String name;
  final CvBloc cvBloc;
  const DeleteCv({
    super.key,
    required this.name,
    required this.cvBloc,
  });

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    emailController.text = name;

    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      content: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Do you want to delete this file?',
                style: TxtStyles.regular18,
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: TxtStyles.semiBold14.copyWith(color: AppColor.primary),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);

            cvBloc.add(const CvEvent.deleteCV());
          },
          child: Text(
            'Delete',
            style: TxtStyles.semiBold14.copyWith(color: AppColor.primary),
          ),
        ),
      ],
    );
  }
}
