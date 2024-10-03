import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatSamples extends StatelessWidget {
  final String rec_msg;
  final String rec_time;
  final String sen_msg;
  final String sen_time;

  const ChatSamples({super.key, required this.rec_msg,required this.rec_time,required this.sen_msg,required this.sen_time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 130, top: 10),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.RECEIVE),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 4),
              child:  Column(
                  children: [
                    Text(rec_msg,style: const TextStyle(fontSize: 15),),
                    Container(
                      margin: const EdgeInsets.only(left: 120),
                      child: Text(rec_time, style: const TextStyle(fontSize: 13, color: Colors.black45),),
                    )
                  ],
                ),
              
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          margin: const EdgeInsets.only(top:20,bottom: 15,left: 80,),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.SEND),
            child: Container(
              color: const Color(0xffE7FFDB),
              child:Padding(
                padding: const EdgeInsets.only(top:10,left: 10, right: 20, bottom: 10),
                child: Column(
                  children: [
                    Text(sen_msg,style: const TextStyle(fontSize: 15),),
                    Padding(
                      padding: const EdgeInsets.only(left:150),
                      child: Row(
                        children: [
                          Text(sen_time, style: const TextStyle(fontSize: 13, color: Colors.black45),),
                          const SizedBox(width: 5,),
                         const Icon(
                              FontAwesomeIcons.checkDouble,
                              color: Colors.blue, // Blue color for read
                              size: 15,
                            )
                          ],
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}