// result_page.dart

import 'package:flutter/material.dart';
import 'package:bmr_calculator/components/custom_card.dart';
import 'package:bmr_calculator/constants.dart';
import 'package:bmr_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {required this.result, required this.bmr, required this.information});

  final String result;
  final String bmr;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMR CALCULATOR'), //appbar
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Center(
                child: const Text( //judul
                  'Your Result',
                  style: TextStyle( //style judul
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded( //card bagian hasil
            flex: 5,
            child: CustomCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmr,
                    style: bmrTextStyle,
                  ),
                  Text(
                    information,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context); //kembali ke halaman sebelumnya
            },
          ),
        ],
      ),
    );
  }
}