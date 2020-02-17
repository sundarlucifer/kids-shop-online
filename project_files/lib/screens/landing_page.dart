import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        height: 50.0,
        child: Row(
          children: <Widget>[
            SizedBox(width: 10.0,),
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
            SizedBox(width: 10.0,),
            Text('Lorem Toy Shop', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),),
            SizedBox(width: 20.0,),
            Container(
              height: 30.0,
              width: 300.0,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
              child: Row(children: <Widget>[
                Expanded(child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    decoration: InputDecoration(border: null,hintText: 'Type to search',),
                  ),
                ),)

              ],),
            ),
          ],
        ),
      ),
    );
  }
}
