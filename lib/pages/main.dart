import 'package:flutter/material.dart';
import 'package:montealto_covid/core/constants.dart';
import 'package:montealto_covid/pages/statistics.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
              boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 20)]
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom:20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                            child: Text('Informações',textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0, bottom:10 ),
            child: RichText(
              text: TextSpan(
                text: 'Sintomas do ',
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'COVID-19', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.mainColor))
                ]
              )
            ),
          ),
          SizedBox(height: 25,),
          Container(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                _buildSintomas("Tosse"),
                _buildSintomas("Febre"),
                _buildSintomas("Corisa"),
                _buildSintomas("Mal estar"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0, bottom:10 ),
            child: RichText(
              text: TextSpan(
                text: 'Prevenções ',
                style: TextStyle(fontSize: 18, color: Colors.black),
              )
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                _buildPrevencoes("Lave", "As mãos"),
                _buildPrevencoes("Mascara", "Descartaveis"),
                _buildPrevencoes("Distanciamento", "Social"),
                _buildPrevencoes("Uso de", "Alcool em gel"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Statistics()));
              },
                        child: Container(
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(.8),
                              Colors.white
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          border: Border.all(color:Colors.white),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(1,1),
                              spreadRadius: 1,
                              blurRadius: 3
                            )
                          ]
                        ),
                        margin: EdgeInsets.only(right:10),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Image.asset("assets/images/montealto.png"),
                            SizedBox(width: 10,),
                            RichText(
                              text: TextSpan(
                                text: "Casos em ",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Monte Alto',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              ),
                            ),
                            Expanded(child: SizedBox(),),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
            ),
          ),
        ],
      ),
    );
  }

  Column _buildSintomas(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.mainColor.withOpacity(.8),
                          Colors.white
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      border: Border.all(color:Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1,1),
                          spreadRadius: 1,
                          blurRadius: 3
                        )
                      ]
                    ),
                    margin: EdgeInsets.only(right:10),
                  ),
                  SizedBox(height: 7,),
                  Text(text, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)
                ],
              );
  }

  Column _buildPrevencoes(String text1, String text2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 170,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(.8),
                          Colors.white
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      border: Border.all(color:Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1,1),
                          spreadRadius: 1,
                          blurRadius: 3
                        )
                      ]
                    ),
                    margin: EdgeInsets.only(right:10),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: <Widget>[
                        
                        SizedBox(width: 10,),
                        RichText(
                          text: TextSpan(
                            text: "$text1\n",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold
                            ),
                            children: [
                              TextSpan(
                                text: text2,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal
                                )
                              )
                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 7,),
                ],
              );
  }
}