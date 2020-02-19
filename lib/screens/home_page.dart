import 'package:flutter/material.dart';
import 'package:kids_shop/data/age_categories.dart';

class HomeScreen extends StatelessWidget {
  List<Widget> _ageButtons = [];

  @override
  Widget build(BuildContext context) {
    ageList.forEach((element) {
      _ageButtons.add(
        FlatButton(
          color: Theme.of(context).primaryColorLight,
          child: Text(
            '$element',
            style:
                TextStyle(color: Colors.white70, fontWeight: FontWeight.w600),
          ),
          onPressed: () {},
        ),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Kids Toy Shop'),
        elevation: 1.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              'Search',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              'Sign in',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 12.0,
            ),
            Center(
              child: Text(
                'India\'s largest online toy shop',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Center(
              child: Image(
                height: 200.0,
                image: AssetImage('assets/images/img_04.png'),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Center(
              child: Text(
                'Shop by age',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _ageButtons,
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(width: 12.0),
                Expanded(
                  child: Container(
                    color: Theme.of(context).primaryColorLight,
                    child: Container(
                      margin: EdgeInsets.all(4.0),
                      padding: EdgeInsets.all(10.0),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                        child: Text(
                          'Top picks for you',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.0),
                Expanded(
                  child: Container(
                    color: Theme.of(context).primaryColorLight,
                    child: Container(
                      margin: EdgeInsets.all(4.0),
                      padding: EdgeInsets.all(10.0),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                        child: Text(
                          'Deals and Offers',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.0),
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
              color: Colors.grey,
              width: MediaQuery.of(context).size.width,
              height: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}
