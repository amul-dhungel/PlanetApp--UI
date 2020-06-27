import 'package:flutter/material.dart';
import 'relatedCards.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
            Navigator.pushReplacementNamed(context, '/');
          } else if (details.delta.dx < 0) {
            Navigator.pushReplacementNamed(context, '/plan');
          }
        },
        child: Stack(
          children: [
            Positioned(
              child: FractionallySizedBox(
                heightFactor: 0.46,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.red.withOpacity(0.3), BlendMode.srcATop),
                    child: Image(
                      image: AssetImage(
                        'images/elep.jpg',
                      ),
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.60,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                    color: Color(0xFFB98959),
                    //borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.6),
              child: Text(
                'Welcome To New Aplanet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 47,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.84, -0.134),
              child: Text(
                'Related to you',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 340, 0, 0),
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Column(
                  children: [
                    Row(
                      children: [
                        RelateCards(),
                        RelateCards(),
                        RelateCards(),
                      ],
                    ),
                    Row(children: [
                      Text(
                        'Life with a tiger',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 60),
                      Text(
                        'Life with a tiger',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 60),
                      Text(
                        'Life with a tiger',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ])
                  ],
                ),
              ]),
            ),
            Positioned(
              top: 570,
              left: 30,
              child: Text(
                'Quick Catergories',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Positioned(
              top: 620,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'images/bear.png',
                              height: 60,
                              width: 60,
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'images/reptiles.png',
                              height: 60,
                              width: 60,
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'images/lion.png',
                              height: 60,
                              width: 60,
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'images/pets.png',
                              height: 60,
                              width: 60,
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown,
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            Positioned(
              top: 700,
              left: 40,
              child: Text('Bear',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ),
            Positioned(
              top: 700,
              left: 120,
              child: Text('Reptiles',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ),
            Positioned(
              top: 700,
              left: 230,
              child: Text('Lion',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ),
            Positioned(
              top: 700,
              left: 325,
              child: Text('Pets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
