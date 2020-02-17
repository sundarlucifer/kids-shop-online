import 'package:flutter/material.dart';
import 'package:kids_shop/screens/home_page.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                  color: Theme.of(context).primaryColor,
                  size: 50.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  'Toy Shop',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text('Buy your favourite toys online'),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Trusted by over 300,000 people across the globe',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(blurRadius: 8.0),
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email address',
                      ),
                      style: TextStyle(fontSize: 20.0),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 50.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorDark,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(blurRadius: 8.0),
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Center(
                        child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Image(
              image: AssetImage('assets/images/img_01.png'),
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
