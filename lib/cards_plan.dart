import 'package:flutter/material.dart';

class CardGenerator extends StatelessWidget {
  String image;
  String info;
  String price;

  CardGenerator(String info, String price, String image) {
    this.image = image;
    this.info = info;
    this.price = price;
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: 320,
        height: 100,
        child: Stack(
          children: [
            Container(
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.srcATop),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/lionking.jpg',
                    fit: BoxFit.fitWidth,
                    height: 150,
                    width: width,
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 8, 0, 8),
                        child: Text(info,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 50, 8),
                        child: Text(price,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
