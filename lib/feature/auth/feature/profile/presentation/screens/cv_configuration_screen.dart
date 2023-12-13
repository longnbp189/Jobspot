import 'package:flutter/material.dart';
import 'package:jobspot/common/widgets/stateless/icon_widget.dart';
import 'package:jobspot/design/app_asset.dart';
import 'package:jobspot/design/typography.dart';

class CVConfigurationScreen extends StatelessWidget {
  const CVConfigurationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Configuration CV',
            style: TxtStyles.semiBold20,
          ),
          centerTitle: true,
          actions: const [IconWidget(icon: AppAsset.edit)],
        ),
        body: SafeArea(child: SingleChildScrollView(child: Container())));
  }
}
