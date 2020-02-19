import 'package:flutter/material.dart';
import 'package:kids_shop/screens/landing_page.dart';

class Error404Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ERROR 404 : Toys missing',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Image(
              height: 300.0,
              width: 300.0,
              image: AssetImage('assets/images/img_03.png'),
              fit: BoxFit.contain,
            ),
            Text(
              'Hmm...you are not supposed to be here',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LandingScreen()));
              },
              child: Text(
                'Get Dora\'s help here',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
