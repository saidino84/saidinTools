import 'package:saidino_admin/app/models/cloud_storage_info.dart';
import 'package:saidino_admin/shared.dart';

import 'componets/file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.add),
              onPressed: () {},
              label: Text('Adicionar novo'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        FileInfoCardGridView()
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final int childAspectRatio;
  FileInfoCardGridView({
    Key? key,
    this.childAspectRatio = 1,
    this.crossAxisCount = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: 10,
          childAspectRatio: childAspectRatio.toDouble()),
      shrinkWrap: true,
      itemCount: demoFiles.length,
      itemBuilder: (context, index) {
        final info = demoFiles[index];
        return FileInfoCard(info: info);
      },
    );
  }
}
