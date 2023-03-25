import 'package:carousel_slider/carousel_slider.dart';
import 'package:fampay/app/components/buttons/rounded_buttons.dart';
import 'package:fampay/app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AfterSplashScreen extends StatefulWidget {
  const AfterSplashScreen({Key? key}) : super(key: key);

  @override
  State<AfterSplashScreen> createState() => _AfterSplashScreenState();
}

class _AfterSplashScreenState extends State<AfterSplashScreen> {
  List<String> bannerList = [
    'images/bannerone.png',
    'images/bannertwo.png',
    'images/bannerthree.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 50,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: MediaQuery.of(context).size.height - 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: CarouselSlider.builder(
                        itemCount: 3,
                        itemBuilder: (context, index, realIndex) {
                          String item = bannerList[index];
                          return GestureDetector(
                            onTap: () {},
                            child: Center(
                                child: Image(
                              image: AssetImage(item),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            )),
                          );
                        },
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: MediaQuery.of(context).size.height,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 900),
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlay: true,
                          enableInfiniteScroll: true,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 35,
                    child: RoundedButton(
                        text: 'Get Started',
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutes.loginRoute);
                        },
                        boxHeight: 60,
                        boxWidth: MediaQuery.of(context).size.width - 70,
                        fontSize: 20),
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
