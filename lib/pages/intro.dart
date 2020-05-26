import 'package:flutter/material.dart';
import 'package:montealto_covid/core/constants.dart';
import 'package:montealto_covid/pages/main.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.mainColor,
              AppColors.mainColor.withOpacity(.7)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Stack(
          children: <Widget>[
            _buildHeader(),
            Center(child: Container(child: Image.asset('assets/images/medic.png'))),
            _buildFooter(context)
          ],
        ),
      ),
    );
  }

  Positioned _buildHeader() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      bottom: 500,
      child: Image.asset('assets/images/akdinesk.png'),
    );
         
  }

  Positioned _buildFooter(BuildContext context) {
    return Positioned(
            bottom: 50,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Coronavirus(COVID-19)', 
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white, 
                    fontWeight: FontWeight.bold),),
                  Text('Fique por dentro de tudo que ocorre na cidade',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    height: 1.5)),
                  SizedBox(height: 25,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> HomePage()));
                    },
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(1,1),
                            spreadRadius: 1,
                            blurRadius: 3
                          )
                        ]
                      ),
                      width: MediaQuery.of(context).size.width*.85,
                      height: 60,
                      child: Center(
                        child: Text('COMECE AGORA', style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                      ),
                    ),
                  )
                ],
            ),
              ),
          );
  }
}