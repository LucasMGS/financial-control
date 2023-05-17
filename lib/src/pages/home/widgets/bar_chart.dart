import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bottomTitles(double value, TitleMeta meta) {
      final titles = <String>['Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab', 'Dom'];

      final Widget text = Text(
        titles[value.toInt()],
        style: const TextStyle(
          color: Color(0xff7589a2),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );

      return SideTitleWidget(
        axisSide: meta.axisSide,
        space: 16, //margin top
        child: text,
      );
    }

    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          titlesData: FlTitlesData(
            topTitles: AxisTitles(
              axisNameSize: 20,
              axisNameWidget: const Text('Transações da semana'),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: bottomTitles,
                reservedSize: 42,
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          baselineY: 50,
          alignment: BarChartAlignment.spaceAround,
          gridData: FlGridData(
            drawHorizontalLine: false,
            drawVerticalLine: false,
          ),
          minY: 0,
          maxY: 100,
          barGroups: [
            BarChartGroupData(
              barsSpace: 4,
              x: 0,
              barRods: [
                BarChartRodData(
                  width: 10,
                  toY: 50,
                  color: Colors.green,
                ),
                BarChartRodData(
                  width: 10,
                  toY: 30,
                  color: Colors.red,
                ),
              ],
            ),
            BarChartGroupData(
              barsSpace: 4,
              x: 1,
              barRods: [
                BarChartRodData(
                  width: 10,
                  toY: 60,
                  color: Colors.green,
                ),
                BarChartRodData(
                  width: 10,
                  toY: 70,
                  color: Colors.red,
                ),
              ],
            ),
            BarChartGroupData(
              barsSpace: 4,
              x: 2,
              barRods: [
                BarChartRodData(
                  width: 10,
                  toY: 5,
                  color: Colors.green,
                ),
                BarChartRodData(
                  width: 10,
                  toY: 20,
                  color: Colors.red,
                ),
              ],
            ),
            BarChartGroupData(
              barsSpace: 4,
              x: 3,
              barRods: [
                BarChartRodData(
                  width: 10,
                  toY: 5,
                  color: Colors.green,
                ),
                BarChartRodData(
                  width: 10,
                  toY: 2,
                  color: Colors.red,
                ),
              ],
            ),
            BarChartGroupData(
              barsSpace: 4,
              x: 4,
              barRods: [
                BarChartRodData(
                  width: 10,
                  toY: 50,
                  color: Colors.green,
                ),
                BarChartRodData(
                  width: 10,
                  toY: 2,
                  color: Colors.red,
                ),
              ],
            ),
            BarChartGroupData(
              barsSpace: 4,
              x: 5,
              barRods: [
                BarChartRodData(
                  width: 10,
                  toY: 5,
                  color: Colors.green,
                ),
                BarChartRodData(
                  width: 10,
                  toY: 2,
                  color: Colors.red,
                ),
              ],
            ),
            BarChartGroupData(
              barsSpace: 4,
              x: 6,
              barRods: [
                BarChartRodData(
                  width: 10,
                  toY: 5,
                  color: Colors.green,
                ),
                BarChartRodData(
                  width: 10,
                  toY: 2,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
