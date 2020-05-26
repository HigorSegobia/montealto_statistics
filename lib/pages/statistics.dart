import 'package:flutter/material.dart';
import 'package:montealto_covid/core/constants.dart';
import 'package:montealto_covid/donut_pie_chart.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft:Radius.circular(25),
                bottomRight:Radius.circular(25),
              )
            ),
            ),
            Container(
              padding: EdgeInsets.only(top:40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal:16),
                  child: Text('Estatisticas',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32
                  ),
                  ),
                  ),
                  SizedBox(height: 25),
                  _buildStatistics(),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: _buildGender(Colors.orangeAccent, 'HOMENS', '59.5%'),
                        ),
                        SizedBox(width: 16,),
                        Expanded(
                          child: _buildGender(Colors.pinkAccent, 'MULHERES', '40.5%'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Container(
                      height: 170,
                      child: Center(child: Image.asset("assets/images/montealto.png"),),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}



Widget _buildStatistics(){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15)),
      border: Border.all(color:Colors.white),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1,1),
          spreadRadius: 1,
          blurRadius: 1,
        ),
      ],
    ),
    
    padding: EdgeInsets.all(24),
    child: Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            child: DonutPieChart.withSampleData(),
          ),
          SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildStatisticItem(Colors.blueAccent, 'Confirmados', '26'),
              _buildStatisticItem(Colors.yellowAccent, 'Recuperados', '19'),
              _buildStatisticItem(Colors.redAccent, 'Mortos', '1')
            ],
          )
        ],
      ),
    ),
  );
}

Widget _buildStatisticItem(Color color, String title, String value){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Icon(
        Icons.label,
        size: 50,
        color: color,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.black38,
            ),
          ),
          SizedBox(height: 5),
          Text(value)
        ],
      )
    ],
  );
}

Widget _buildGender(Color color, String title, String value){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15)),
      border: Border.all(color: Colors.white),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1 ,1),
          spreadRadius: 1,
          blurRadius: 1,
        ),
      ],
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      children: <Widget>[
       Row(children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 14,
              ),
            ),
            Text(
              "Casos Confirmados",
              style: TextStyle(
                color: Colors.black38,
                height: 1.5
              ),
            ),
       ],
       ),
          ],
        ),
      SizedBox(height: 20),
      Text(
        value,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
      )
      ],
    ),
  );
}