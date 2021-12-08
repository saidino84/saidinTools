import 'package:saidino_admin/app/ui/dashboard/storage_details/storage_info_card.dart';
import 'package:saidino_admin/shared.dart';

import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ), // primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          Expanded(
            child: ListView(
              shrinkWrap: false,
              children: [
                StorageInfoCard(
                  svgSrc: 'assets/icons/Documents.svg',
                  title: 'Documents Files',
                  amoutOfFiles: '1.3GB',
                  numOfFiles: 1328,
                ),
                StorageInfoCard(
                  svgSrc: 'assets/icons/media.svg',
                  title: 'Media Files',
                  amoutOfFiles: '21.3GB',
                  numOfFiles: 13328,
                ),
                StorageInfoCard(
                  svgSrc: 'assets/icons/folder.svg',
                  title: 'Media Files',
                  amoutOfFiles: '15.3GB',
                  numOfFiles: 6,
                ),
                StorageInfoCard(
                  svgSrc: 'assets/icons/unknown.svg',
                  title: 'Media Files',
                  amoutOfFiles: '15.3GB',
                  numOfFiles: 6176,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
