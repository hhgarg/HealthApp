import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.27*(MediaQuery.of(context).size.height),
      width: 330,
      child: LineChart(
        LineChartData(
            minX: 0,
            maxX: 4,
            minY: 59,
            maxY: 64,
            titlesData: LineTitles.getTitleData(),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: Colors.black,
                  strokeWidth: 1,
                  dashArray: [10, 5],
                );
              },
            ),
            borderData: FlBorderData(
              show: false,
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 63.5),
                  FlSpot(0.2, 63.6),
                  FlSpot(0.5, 63.1),
                  FlSpot(0.8, 63.3),
                  FlSpot(1, 62.8),
                  FlSpot(1.4, 62.75),
                  FlSpot(1.6, 61.9),
                  FlSpot(1.78, 62.0),
                  FlSpot(2, 61),
                  FlSpot(2.5, 62.8),
                  FlSpot(3, 62),
                  FlSpot(3.2, 61.1),
                  FlSpot(3.4, 61.5),
                  FlSpot(4, 61),
                ],
                barWidth: 5,
                isCurved: true,
                colors: [Color(0xffff6565), Color(0xffff6565)],
                dotData: FlDotData(
                  show: false,
                ),
                dashArray: [10, 5],
              ),
              LineChartBarData(
                spots: [
                  FlSpot(0, 63.4),
                  FlSpot(0.5, 63.35),
                  FlSpot(0.8, 63),
                  FlSpot(1, 62.9),
                  FlSpot(1.4, 62.78),
                  FlSpot(1.8, 61.2),
                  FlSpot(2, 61.1),
                  FlSpot(2.5, 62.4),
                  FlSpot(3, 62.5),
                  FlSpot(3.2, 62),
                  FlSpot(3.6, 61.5),
                  FlSpot(4, 60.8),
                ],
                barWidth: 2,
                isCurved: true,
                colors: [Colors.black],
                dotData: FlDotData(
                  show: false,
                ),
                dashArray: [5, 4],
              ),
            ]),
      ),
    );
  }
}

class LineTitles {
  static getTitleData() {
    return FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 20,
        getTextStyles: (value) {
          return TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          );
        },
        getTitles: (value) {
          switch (value.toInt()) {
            case 2:
              return 'Mar';
            case 0:
              return 'Jan';
            case 1:
              return 'Feb';
            case 3:
              return 'Apr';
            case 4:
              return 'May';
          }
          return '';
        },
      ),
      leftTitles: SideTitles(
        showTitles: true,
        reservedSize: 20,
        margin: 10,
        getTextStyles: (value) {
          return TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          );
        },
        getTitles: (value) {
          switch (value.toInt()) {
            case 60:
              return '60';
            case 61:
              return '61';
            case 62:
              return '62';
            case 63:
              return '63';
            case 64:
              return '64';
          }
          return '';
        },
      ),
    );
  }
}
