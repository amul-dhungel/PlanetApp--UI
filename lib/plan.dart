import 'package:flutter/material.dart';
import 'cards_plan.dart';

class Plan extends StatefulWidget {
  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('aplanet',
                    style: TextStyle(
                      fontSize: 25,
                    )),
                Text('we love the planet',
                    style: TextStyle(
                      fontSize: 12.0,
                    ))
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [Icon(Icons.dehaze)],
              ),
            ],
          )),
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.pushReplacementNamed(context, '/');
          } else if (details.delta.dx > 0) {
            Navigator.pushReplacementNamed(context, '/details');
          }
        },
        child: Stack(children: [
          Container(
            color: Color.fromRGBO(156, 114, 72, 1),
          ),
          Positioned(
            top: 120,
            left: 15,
            child: Text(
              'Choose a plan',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 160,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: Column(children: [
                CardGenerator("Weekly Subscription", '100', 'tiger'),
                SizedBox(height: 15),
                CardGenerator("Weekly Subscription", '100', 'tiger'),
                SizedBox(height: 15),
                CardGenerator("Weekly Subscription", '100', 'tiger'),
                SizedBox(height: 15),
                CardGenerator("Weekly Subscription", '100', 'tiger'),
                SizedBox(height: 15),
              ]),
            ),
          ),
          Positioned(
            top: 690,
            left: 17,
            child: Text(
              'Last Step to enjoy',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 680,
            left: 330,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Color.fromRGBO(141, 133, 124, 0.8),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
