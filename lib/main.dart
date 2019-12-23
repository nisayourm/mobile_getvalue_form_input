import 'package:flutter/material.dart';

void main()=>runApp(Demo());
class Demo extends StatefulWidget {
  @override 
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String _firstName ="";
  String _lastName = "";
  String _info = "";
  void register(){
    setState(() {
      _info = _firstName +"  and  "+_lastName;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
       
        appBar: AppBar( 
          title: Text("TextField"),
        ),
        body: Column( 
          children: <Widget>[
            Container( 
              padding: EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (String text){
                  _firstName = text;
                },
              ),
            ),
            Text( "Frist Name  "+_firstName),
            Container( 
              padding: EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (String text){
                  _lastName = text;
                },
              ),
            ),
            Text( "Last Name   "+_lastName),
           
            Container( 
              padding: EdgeInsets.all(30.0),
              child: RaisedButton( 
                onPressed: register,
                child: Text("Register",style: TextStyle(color: Colors.white),),
                color:Colors.red,
              ),
            ),
            Text( "Frist Name and Last Name  "+_info),
            
          ],
          
        ),
      ),
    
      
    );
  }
}