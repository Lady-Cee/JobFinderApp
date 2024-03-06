import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/features/message/widgets/koffis_call.dart';

import 'koffi_messages_items.dart';

class KoffisMessage extends StatelessWidget {
  const KoffisMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/message_images/pix2.png"),
            ),
            SizedBox(width: 8),
            Text(" Koffis Mensah"),

          ],
        ),
            actions: [
              IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return KoffisCall();
                      }),
                    );
                  },
                icon: Image.asset("assets/images/koffis_images/phone.png", width: 30,),
              ),
            ],
      ),

      body: SingleChildScrollView(
    child: Column(
        children: [
          KoffiMessagesItems(),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left:16.0, right: 20.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/images/koffis_images/plus.png", width: 50,),
                ),
                SizedBox(width: 30,),
                Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Type a message",
                       border: InputBorder.none,
                      ),
                    )
                ),
                GestureDetector(
                  onTap:(){},
                  child: Image.asset("assets/images/koffis_images/send.png", width: 30,),
                )
              ],

            ),
          )
        ],
      )
      ),

    );
  }
}

