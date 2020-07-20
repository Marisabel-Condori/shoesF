import 'package:flutter/material.dart';

import 'package:shoes_app/src/widgets/custom_appbar_widget.dart';
import 'package:shoes_app/src/widgets/zapatoSizePreview.dart';

class ZapatoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarWidget('for you'),
          SizedBox(height: 20.0),
          ZapatoSizePreviewWidget()
        ],
      )
    );
  }
}