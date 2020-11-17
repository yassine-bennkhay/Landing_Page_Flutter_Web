import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> PageChildren(double width) {
    return <Widget>[
      Container(
        width: width,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Flutter\nLearner',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: 'MyFamily_2'),
              ),
            ),
            MaterialButton(
              color: Color(0xffFCC33C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Image.asset('images/image.png',width: width,),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 000) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: PageChildren(constraints.biggest.width/2,),
          );
        } else {
          return Column(
            children: PageChildren(constraints.biggest.width,),
          );
        }
      },
    );
  }
}
