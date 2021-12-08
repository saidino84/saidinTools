import 'package:fl_chart/fl_chart.dart';
import 'package:saidino_admin/shared.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pieChartSelectionDatas = [
      PieChartSectionData(
        color: primaryColor,
        value: 25,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        color: Color(0xFF26E5FF),
        value: 20,
        showTitle: false,
        radius: 22,
      ),
      PieChartSectionData(
        color: Color(0xFFffcf26),
        value: 10,
        showTitle: false,
        radius: 19,
      ),
      PieChartSectionData(
        color: Color(0xFFEE2727),
        value: 15,
        showTitle: false,
        radius: 16,
      ),
      PieChartSectionData(
        color: primaryColor.withOpacity(0.1),
        value: 25,
        showTitle: false,
        radius: 13,
      ),
    ];
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                sections: pieChartSelectionDatas,
                startDegreeOffset: -90,
                sectionsSpace: 0,
                centerSpaceRadius: 70),
          ),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                '29.1',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    height: 0.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text('of 128GB'),
            ],
          ))
        ],
      ),
    );
  }
}
