import 'package:flutter/material.dart';
import '../constants/images_Var.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatelessWidget {

  SplashScreen({Key? key}) : super(key: key);


  final controller = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      Container(
          padding: const EdgeInsets.all(30),
          color: Colors.white,
          child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage(SSCommunity), height: size.height * 0.4),
                Column(
                  children: [
                    Text("Community" , style: Theme.of(context).textTheme.headline3,),
                    const Text("Connect, share, and inspire for collective climate action and awareness", textAlign: TextAlign.center,),
                    SizedBox(height:150)
                  ],
                )
              ]
          )
      ),

      Container(
          padding: const EdgeInsets.all(30),
          color: Colors.white,
          child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage(SSGmart), height: size.height * 0.4),
                Column(
                  children: [
                    Text("Gmart" , style: Theme.of(context).textTheme.headline3,),
                    const Text("Get ECO friendly Products in our Gmart! Amazing offers with Gcoin", textAlign: TextAlign.center,),
                    SizedBox(height:150)
                  ],
                )
              ]
          )
      ),

      Container(
          padding: const EdgeInsets.all(30),
          color: Colors.white,
          child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage(SSGmart), height: size.height * 0.4),
                Column(
                  children: [
                    Text("Fuck" , style: Theme.of(context).textTheme.headline3,),
                    const Text("Get ECO friendly Products in our Gmart! Amazing offers with Gcoin", textAlign: TextAlign.center,),
                    SizedBox(height:150)
                  ],
                )
              ]
          )
      ),


    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            onPageChangeCallback: onPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal:true,
          ),
          Positioned(
            bottom:60.0,
            child: OutlinedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle
                ),
                child: const Icon(Icons.arrow_forward_ios),

            ),

            )

          ),
          Positioned(
            top:50,
            right:20,
            child: const Text("Skip", style: TextStyle(color: Colors.grey))
          ),
          Positioned(
            bottom: 193,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Colors.green,
                dotHeight: 5.0,
              )
            )
          )
        ]
      )
    );
  }

   onPageChangedCallback(int activePageIndex) {
    currentPage = activePageIndex;
  }
}

