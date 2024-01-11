import 'package:eazio_task/screens/bar_graph/bar_data.dart';
import 'package:eazio_task/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraph extends StatelessWidget {
  final List weeklySummary;
  const BarGraph({Key? key, required this.weeklySummary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        sunAmount: weeklySummary[0],
        monAmount: weeklySummary[1],
        tueAmount: weeklySummary[2],
        wedAmount: weeklySummary[3],
        thuAmount: weeklySummary[4],
        friAmount: weeklySummary[5],
        satAmount: weeklySummary[6]);
    myBarData.initailizeBarData();

    return BarChart(BarChartData(
        maxY: 100,
        minY: 0,
        barGroups: myBarData.barData
            .map((data) => BarChartGroupData(
                x: data.x, barRods: [BarChartRodData(toY: data.y, width: 20, color: garphYellowColor, backDrawRodData: BackgroundBarChartRodData(show: true, toY: 100, color: garphBarColor)
        )]))
            .toList()));
  }
}
