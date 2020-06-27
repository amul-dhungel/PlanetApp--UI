import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          if (details.delta.dx > 0) {
            Navigator.pushReplacementNamed(context, '/plan');
          } else if (details.delta.dx < 0) {
            Navigator.pushReplacementNamed(context, '/details');
          }
        },
        child: Stack(
          children: [
            Container(
              child: Image(
                image: AssetImage('images/elep.jpg'),
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              // color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 0, 0, 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ready to watch?',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Text(
                        'A planet is global leader in real life',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text('entertainment,serving a passionate audience of',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text('superfans around the world with content that',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text('inspires,informs and entertains.',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 12),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Start Enjoying',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              )),
                        ],
                      ),
                    ]),
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
          ],
        ),
      ),
    );
  }
}
