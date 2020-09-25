import 'package:flutter/material.dart';

import 'InstaList.dart';
class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: InstaList(),
        )
      ],
    );
  }
}
