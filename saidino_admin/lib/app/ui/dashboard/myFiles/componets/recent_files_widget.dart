import 'package:saidino_admin/app/models/recent_files.dart';
import 'package:saidino_admin/app/utils/constants.dart';
import 'package:saidino_admin/shared.dart';

class RecentFilesWidget extends StatelessWidget {
  const RecentFilesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                columnSpacing: defaultPadding,
                horizontalMargin: 0,
                columns: [
                  DataColumn(label: Text('File Name')),
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Size')),
                ],
                rows: List.generate(demoResentFiles.length,
                    (index) => recentFileDataRow(demoResentFiles[index]))),
          )
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile recentFile) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          SvgPicture.asset(
            // demoResentFiles[0].icon,
            recentFile.icon,
            height: 30,
            width: 30,
          ),
          SizedBox(width: 10),
          Text.rich(
            TextSpan(
              // text: demoResentFiles[0].title + "\n",
              text: recentFile.title + "\n",
              children: [
                TextSpan(
                  text: recentFile.icon,
                  style: TextStyle(
                    color: Colors.white24,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
      DataCell(
        Text(
            // demoResentFiles[0].date,
            recentFile.date),
      ),
      DataCell(
        Text(
          recentFile.size,
        ),
      )
    ]);
  }
}
