import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:task/Home_Page/sendata_screen.dart';
import 'package:task/Model_page/store_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class View_screen extends StatefulWidget {
  const View_screen({Key? key}) : super(key: key);

  @override
  _View_screenState createState() => _View_screenState();
}

class _View_screenState extends State<View_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<NotesProviders>(
          builder: (context,NotesProviders data,child){
            return data.getNotes.length !=0 ? ListView.builder(
              itemCount: data.getNotes.length,
              itemBuilder: (context,index){
                return  Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),

                      )
                  ),
                  child: ListTile(
                    leading: Icon(Icons.note),
                    title: Text(data.getNotes[index].title),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Senddata_screen(datalist:data.getNotes[index].title)));
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Senddata_screen()));

                    },
                  ),
                );
               // return CardList(data.getNotes[index],index);
              },
            ): GestureDetector();
          },
        ),
      ),

    );
  }
}




