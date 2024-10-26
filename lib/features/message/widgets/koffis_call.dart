import 'package:flutter/material.dart';

class KoffisCall extends StatelessWidget {
  const KoffisCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
      body: Stack(
        children: [
    Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/message_images/pix1.jpg"),
            fit: BoxFit.cover,
          )
        ),
      ),
          Positioned(
            right: 8,
            child: Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/message_images/pix1.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Positioned(
            top: 120,
            right: 50,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.red,
              ),
              child: Image.asset(
                  "assets/images/koffis_images/reloading.png",
                  fit: BoxFit.cover,
              ),

            ),

          ),
          const Positioned(
            top: 400,
            left: 110,
              child: Column(
                children: [
                  Text(
                      " Daniella Roosevelt",
                      style:TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    " 09:12",
                    style:TextStyle(color: Colors.white,),
                  ),

                ],
              ),

          ),
          Positioned(
            top: 550,
            left: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                      border: Border.all(
                          color: Colors.black,
                          width: 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child:  Image.asset("assets/images/koffis_images/microphone.png", width: 20,),
                  ),
                ),

                const SizedBox(width: 50,),

                Image.asset("assets/images/koffis_images/circle.png", width: 40,),
                const SizedBox(width: 50,),

                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child:  Image.asset("assets/images/koffis_images/videocall.png", width: 25,),

                  ),
                )


              ],
            ),

          ),

    ],
      ),
    );
  }
}
