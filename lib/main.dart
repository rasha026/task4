import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }

}
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  int counter=0;
  int index=0;

void changeIndex( i)
{setState((){
    index=i;

}
);


}

  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar( title:Text('task4'),
         backgroundColor: Colors.indigo,),


         body:Center(child: Text('counter= $counter \n index= $index',style:TextStyle(fontSize: 29,),),
         ),




         bottomNavigationBar: BottomAppBar(

           shape: CircularNotchedRectangle(),
           clipBehavior: Clip.hardEdge,
           child: BottomNavigationBar(


           type: BottomNavigationBarType.fixed, //to show text for all
            iconSize: 25,
             backgroundColor: Colors.indigo,
             fixedColor: Colors.grey, //for selected icon


             items: const <BottomNavigationBarItem>[

             BottomNavigationBarItem(icon:Icon(Icons.list )
                 ,title: Text('List'),backgroundColor: Colors.grey),


           BottomNavigationBarItem(icon:Icon(Icons.add_ic_call ),
               title: Text('Call')),



           BottomNavigationBarItem(icon:Icon(Icons.account_circle_outlined, ) ,
             title: Text('profile')),

           BottomNavigationBarItem(icon:Icon(Icons.settings ,) ,
             title: Text('Setting')),


         ],

          currentIndex: index,
          onTap: changeIndex ,

         ),
         ),


           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         floatingActionButton:new FloatingActionButton(


           child: Icon(Icons.add),

           onPressed: (){
             setState((){
               counter++;

             });
           },


         ),




       );



  }


}

