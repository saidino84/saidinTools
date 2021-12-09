import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:saidino_admin/app/models/recent_files.dart';
import 'package:saidino_admin/app/ui/dashboard/myFiles/componets/recent_files_widget.dart';
import 'package:saidino_admin/shared.dart';

import 'componets/profile_card.dart';
import 'componets/search_field.dart';
import 'header.dart';
import 'myFiles/my_files.dart';
import 'storage_details/storage_details.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFilesWidget()
                    ],
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
