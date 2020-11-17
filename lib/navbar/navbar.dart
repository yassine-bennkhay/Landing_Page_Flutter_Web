import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesctopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesctopNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesctopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Flutter Learner',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                letterSpacing: 3,
                fontFamily: 'Family_1',
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'MyFamily_2'),
                ),
                SizedBox(width: 30,),
                Text(
                  'About Us',
                  style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'MyFamily_2'),
                ),
                SizedBox(width: 30,),
                Text(
                  'Portfolio',
                  style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'MyFamily_2'),
                ),
                SizedBox(width: 30,),
                MaterialButton(
                  color: Color(0xffFCC33C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0),
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'MyFamily_2',
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: Container(
        child: Column(
          children: [
            Text(
              'Flutter Learner',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(width: 30,),
                  Text(
                    'About Us',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(width: 30,),
                  Text(
                    'Portfolio',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
