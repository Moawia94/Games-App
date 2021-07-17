import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
            0.01,
            0.3,
            0.8
          ],
              colors: [
            Color(0xFF9408C2),
            Color(0xFF313D8A),
            Color(0xFF15002C)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/MyLogo.jpg'),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Happy Weekend',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  'Hi, Muawia',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey.shade600,
                            )),
                        child: Icon(
                          Icons.apps_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Let\s Explore',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        'Best Games',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFD50F9A),
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Popular',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Text('Newest', style: TextStyle(color: Colors.grey)),
                      Text('Recommended', style: TextStyle(color: Colors.grey)),
                      Icon(Icons.search, color: Colors.white)
                    ],
                  ),
                ),
                CarouselSlider(
                  items: [
                    MainCard(image: 'images/01.png'),
                    MainCard(image: 'images/02.png'),
                    MainCard(image: 'images/03.png'),
                    MainCard(image: 'images/04.png'),
                  ],
                  options: CarouselOptions(
                      autoPlay: false,
                      height: 480,
                      viewportFraction: 0.8,
                      enlargeCenterPage: true),
                ),
                SizedBox(height: 10),
                GlassContainer(
                  height: 100,
                  width: double.infinity,
                  color: Colors.transparent,
                  blur: 15,
                  borderRadius: BorderRadius.circular(40),
                  borderGradient: LinearGradient(
                      colors: [Color(0xFF242650), Color(0xFF26103C)]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF271240)),
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xFFEB1787)),
                                child: Icon(
                                  Icons.games,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Games',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border:
                                        Border.all(color: Color(0xFF27123E))),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border:
                                        Border.all(color: Color(0xFF27123E))),
                                child: Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 470,
        width: 330,
        child: Stack(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFBE04BD), Color(0xFFF41785)])),
              child: Image.asset(image),
            ),
            Positioned(
                bottom: 10,
                left: 80,
                child: GlassContainer(
                  height: 70,
                  width: 180,
                  borderColor: Color(0xFFFC1A7D),
                  color: Color(0xFF6C0D53).withOpacity(0.1),
                  blur: 10,
                  borderWidth: 0.1,
                  isFrostedGlass: false,
                  borderRadius: BorderRadius.circular(50),
                  elevation: 3,
                )),
            Positioned(
                bottom: 25,
                left: 60,
                child: GlassContainer(
                  height: 70,
                  width: 220,
                  borderColor: Color(0xFFFC1A7D),
                  color: Color(0xFF6C0D53).withOpacity(0.1),
                  blur: 10,
                  borderWidth: 0.1,
                  isFrostedGlass: false,
                  borderRadius: BorderRadius.circular(50),
                  elevation: 3,
                )),
            Positioned(
                bottom: 40,
                left: 35,
                child: GlassContainer(
                  height: 70,
                  width: 270,
                  borderColor: Color(0xFFFC1A7D),
                  color: Color(0xFF6C0D53).withOpacity(0.1),
                  blur: 10,
                  borderWidth: 0.1,
                  isFrostedGlass: false,
                  borderRadius: BorderRadius.circular(50),
                  elevation: 3,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fortnite',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Active Shooter',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
