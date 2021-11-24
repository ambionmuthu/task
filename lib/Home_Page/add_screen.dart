import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/Model_page/add_data.dart';
import 'package:task/Model_page/store_data.dart';


class Add_Screen extends StatefulWidget {
  const Add_Screen({Key? key}) : super(key: key);

  @override
  _Add_ScreenState createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {

  TextEditingController _Title = TextEditingController();
  bool _validate = false;
  late final Notes notes;
  late int index;

  final snackBar = SnackBar(content: Text('Enter the text!'));
  @override
  void dispose() {
    _Title.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    resizeToAvoidBottomInset: true,

    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<NotesProviders>(
        builder: (context,NotesProviders data,child){
         return Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _Title,
                  decoration: InputDecoration(

                    labelText: 'Enter the data',
                    //errorText: _validate ? 'data Can\'t Be Empty' : null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.black, width: 2.0)
                    ),
                  ),

                ),
               const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(

                      onPressed: () {
                        Provider.of<NotesProviders>(context,listen: false).getNotes.clear();
                      },
                      child: const Text('Clear'),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *.50,
                    ),
                    ElevatedButton(

                      onPressed: () {

                        if( _Title.text.isEmpty){
                         // _validate = true;
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                        else{
                          _validate = false;
                          Provider.of<NotesProviders>(context,listen: false).addNotes(_Title.text,);
                        }
                      },
                      child: const Text('Add'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ),

    );
  }
}



class CardList extends StatelessWidget {
  final Notes notes;
  int index;

  CardList(this.notes,this.index);

  @override
  Widget build(BuildContext context) {
    return  Container();
  }
}
