import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/Model_page/store_data.dart';



class Senddata_screen extends StatelessWidget {
  final String datalist;
   const Senddata_screen( {Key? key, required this.datalist,  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child:  Text('datalist: $datalist'),

    ));
  }
}
