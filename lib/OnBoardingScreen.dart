import 'package:flutter/material.dart';

class OnBoardinScreen extends StatefulWidget {
  @override
  _OnBoardinScreenState createState() => _OnBoardinScreenState();
}

class _OnBoardinScreenState extends State<OnBoardinScreen> {
  final int _totalPages = 4;
  final PageController _pagecontroller = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView(
              controller: _pagecontroller,
              onPageChanged: (int page) {
                _currentPage = page;
                setState(() {});
              },
              children: [
                _buildPageContent(
                  image: 'assets/netflix-1.jpg',
                  body: "Trying to \n join Netflix?",
                  desc:
                      "You can't sign up for Netflix in the \n app. We know it's hassle. After \n you're a member, you can start \n watching in the app.",
                  color: Color.fromRGBO(130, 172, 32, 1),
                ),
                _buildPageContent(
                  image: 'assets/netflix-2.jpg',
                  body: "Watch on \n any device!",
                  desc: "Stream on your phone, tablet, laptop, and TV.",
                  color: Color.fromRGBO(255, 141, 104, 1),
                ),
                _buildPageContent(
                  image: 'assets/netflix-3.jpg',
                  body: "3, 2, 1... Download!",
                  desc: "Always have something to watch offline",
                  color: Color.fromRGBO(195, 169, 255, 1),
                ),
                _buildPageContent(
                  image: 'assets/netflix-4.jpg',
                  body: "No pesky contract",
                  desc: "Cancel anytime",
                  color: Color.fromRGBO(195, 169, 255, 1),
                ),
                Positioned(
                  top: 5,
                  left: MediaQuery.of(context).size.width * .03,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * .9,
                          child: Row(
                            children: [
                              Container(
                                width: 80.0,
                                child: Image.asset('assets/netflix.png'),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text(
                                          'Help',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text(
                                          'Privacy',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
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

  Widget _buildPageContent(
      {String image, String body, String desc, Color color}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 200.0),
            child: Text(
              body,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              height: 1.2,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
