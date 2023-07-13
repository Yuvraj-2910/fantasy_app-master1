import 'package:fantasyapp/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    List winners = [
      'John',
      'Emma',
      'Michael',
      'Olivia',
    ];
    List positions = ['4th', '5th', '6th', '7th'];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 176, 144, 229),
          title: AppText(
            text: 'Leaderboard',
          )),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 63,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://pps.whatsapp.net/v/t61.24694-24/322276934_6549752695058858_2721368468084248654_n.jpg?ccb=11-4&oh=01_AdTMrrzPu17MijVwGffhj901V6TzrNp1BP2_Tojazbpssg&oe=64BBAAB2'),
                    ),
                    Positioned(
                      top: -10,
                      left: -10,
                      child: Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/1st_badge.png', // Replace with the actual asset path of your badge image
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppText(
                text: 'Sarthak Gandekar',
                size: 20,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 63,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://pps.whatsapp.net/v/t61.24694-24/322276934_6549752695058858_2721368468084248654_n.jpg?ccb=11-4&oh=01_AdTMrrzPu17MijVwGffhj901V6TzrNp1BP2_Tojazbpssg&oe=64BBAAB2'),
                    ),
                    Positioned(
                      top: -10,
                      left: -10,
                      child: Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/2nd_badge.png', // Replace with the actual asset path of your badge image
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 63,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://pps.whatsapp.net/v/t61.24694-24/322276934_6549752695058858_2721368468084248654_n.jpg?ccb=11-4&oh=01_AdTMrrzPu17MijVwGffhj901V6TzrNp1BP2_Tojazbpssg&oe=64BBAAB2'),
                    ),
                    Positioned(
                      top: -10,
                      left: -10,
                      child: Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/3rd_badge.png', // Replace with the actual asset path of your badge image
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppText(
                text: 'Sarthak Gandekar',
                size: 20,
                fontWeight: FontWeight.w500,
              ),
              AppText(
                text: 'Sarthak Gandekar',
                size: 20,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 40),
                    leading: AppText(
                      text: positions[index],
                      size: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    title: AppText(
                        text: winners[index],
                        size: 20,
                        fontWeight: FontWeight.w400),
                  ),
                );
              },
              itemCount: positions.length,
            ),
          )
        ],
      ),
    );
  }
}
