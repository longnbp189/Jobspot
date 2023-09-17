part of '../screens/cv_screen.dart';

class UpdateNameCv extends StatelessWidget {
  final String name;
  final CvBloc cvBloc;
  const UpdateNameCv({
    super.key,
    required this.name,
    required this.cvBloc,
  });

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    emailController.text = name;

    return BlocBuilder<CvBloc, CvState>(
      bloc: cvBloc,
      builder: (context, state) {
        return AlertDialog(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          title: Text(
            'Edit uploaded cv',
            style: TxtStyles.semiBold16,
          ),
          content: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomTextFormField(
                    title: 'Email',
                    textController: emailController,
                    onChanged: (value) {
                      print(value);
                      cvBloc.add(CvEvent.nameChanged(value));
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                cvBloc.add(const CvEvent.nameChanged(''));
              },
              child: Text(
                'Cancel',
                style: TxtStyles.semiBold14.copyWith(color: AppColor.primary),
              ),
            ),
            TextButton(
              onPressed: cvBloc.state.isUpdateName()
                  ? () {
                      Navigator.pop(context);
                      cvBloc.add(const CvEvent.updateNameCV());
                    }
                  : null,
              child: Text(
                'Update',
                style: TxtStyles.semiBold14.copyWith(
                    color: cvBloc.state.isUpdateName()
                        ? AppColor.primary
                        : AppColor.textGreyColor),
              ),
            ),
          ],
        );
      },
    );
  }
}
