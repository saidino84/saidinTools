import 'package:saidino_admin/app/models/cloud_storage_info.dart';
import 'package:saidino_admin/shared.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 5,
        width: double.infinity,
        decoration: BoxDecoration(
          color: info.color.withOpacity(0.1),
        ),
      ),
      LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: 5,
          width: constraints.maxWidth * (info.percentage / 100),
          decoration: BoxDecoration(
            color: info.color.withOpacity(1),
          ),
        );
      }),
    ]);
  }
}
