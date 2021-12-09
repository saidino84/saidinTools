import 'package:saidino_admin/app/models/cloud_storage_info.dart';
import 'package:saidino_admin/shared.dart';

import 'progressline.dart';

class FileInfoCard extends StatelessWidget {
  final CloudStorageInfo info;
  const FileInfoCard({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: info.color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(
                  info.svgSrc,
                  color: info.color,
                ),
              ),
              Icon(
                Icons.more_vert,
              )
            ],
          ),

          SizedBox(
            height: 10,
          ),
          Text(
            info.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          //progress line
          ProgressLine(info: info),

          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${info.numOfFiles} Files',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white70),
                ),
                Text(
                  info.totalStorage,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white70),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
