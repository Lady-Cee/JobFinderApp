import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/features/message/widgets/koffis_messages.dart';

import '../widgets/message_view_details.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Message")),
        actions: [
          IconButton(
          onPressed: (){},
              icon: Image.asset("assets/images/message_images/search.png"),
    ),
    ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MessageViewDetails(
             title: "Tamaris Johanness",
                subtitle: "A wonderful event occur...",
              leadingIcon: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/message_images/pix1.jpg"),
              ),

              trailingIcon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                padding: EdgeInsets.all(12),
                child: Text("2", style: TextStyle(color: Colors.white),),
              ),

            ),
            MessageViewDetails(
              title: "Koffis Mensah",
              subtitle: "Tell me more",
              leadingIcon: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/message_images/pix2.png"),
              ),

              trailingIcon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                padding: EdgeInsets.all(12),
                child: Text("1", style: TextStyle(color: Colors.white),),
              ),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context){
                      return KoffisMessage();
                    })
                );
              },



            ),
            MessageViewDetails(
              title: "Roberto Manes",
              subtitle: "We have to sort out how to fix...",
              leadingIcon: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/message_images/pix4.png"),
              ),
            ),
            MessageViewDetails(
              title: "Monalisa Manafs",
              subtitle: "The capstone project is giving...",
              leadingIcon: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/message_images/pix3.png"),
              ),
            ),
            MessageViewDetails(
              title: "Harrison",
              subtitle: "I will be able to carry... ",
              leadingIcon: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/message_images/h.png"),
              ),
              trailingIcon: Container(
                padding: EdgeInsets.all(12),
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                ),
                child: Image.asset(
                  "assets/images/message_images/delete.png",
                  color: Colors.white,
                ),
              ),

            ),
            MessageViewDetails(
              title: "Christiano Robert",
              subtitle: "This mini project, no comment..",
              leadingIcon: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/message_images/pix5.png"),
              ),
            ),
            MessageViewDetails(
              title: "Mario Muna",
              subtitle: " My birthday is soon, I have ...",
              leadingIcon: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/message_images/m.png"),
              ),
            ),
            MessageViewDetails(
              title: "Cynthia",
              subtitle: "I am so excited that I am doing ...",
              leadingIcon: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/message_images/c.png"),
              ),
            ),
            MessageViewDetails(
              title: "Julianne Quamba",
              subtitle: " Yu should find a way to ...",
              leadingIcon: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/message_images/pix6.png"),
              ),
            ),
          ],

        ),


      ),

    );
  }
}

