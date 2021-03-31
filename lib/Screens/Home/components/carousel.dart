



import 'package:babysit_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carousel extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const carousel({
    Key key, this.text, this.press, this.color, this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CarouselSlider(
          items: [
            //1st Image of Slider
            Container(

              child: Stack(
                children: <Widget>[
                Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1489760176169-fd3d32805239?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80',
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                ),
                  /*Container(
                    alignment: Alignment.bottomRight,
                    child: Text("Dee, 21", textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Assistant-Light',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),*/
                ],
              ),
            ),

            //2nd Image of Slider
            Container(

              child: Stack(
                children: <Widget>[
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1581952975750-75947e1874c5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                  /*Container(
                    alignment: Alignment.bottomRight,
                    child: Text("Joan, 22", textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Assistant-Light',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),*/
                ],
              ),
            ),

            //3rd Image of Slider
            Container(

              child: Stack(
                children: <Widget>[
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1560707854-fb9a10eeaace?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                  /*Container(
                    alignment: Alignment.bottomRight,
                    child: Text("Rea, 24", textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Assistant-Light',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            //height: 150.0,
            enlargeCenterPage: true,
            //autoPlay: true,
            aspectRatio:20 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: false,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.6,
          ),
        ),
      ],
    );
  }
}