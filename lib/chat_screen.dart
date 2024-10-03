import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/sample_chats.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65), 
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10,left: 5),
            child: InkWell(
              onTap: (){ Navigator.pop(context);},
              child: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
            ),
            leadingWidth: 20,
            title: Padding(
              padding:const EdgeInsets.only(top:6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset('images/profile1.jpg',
                  height: 45,
                  width: 45,
                  ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hammad',
                          style: TextStyle(
                            fontSize: 17
                          ),
                          ),
                          SizedBox(height: 3,),
                          Text(
                            'online',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54
                            ),
                          )
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: Icon(Icons.video_call_outlined, size: 30,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: Icon(Icons.call_outlined, size: 24,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Icon(Icons.more_vert, size: 30,),
              )
            ],
        )
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              // opacity: 0.9,
              fit: BoxFit.cover
              )
          ),

          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 10,left: 8,right:8,bottom: 100),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF3C2),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 8,
                      )
                    ]
                  ),
                  child: const Text("Messages and calls are end-to-end encrypted, No one outside of this chat can read or listen. Tap to learn more",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13.5),
                  ),
                ),

                //Messages by using chat samples
                const ChatSamples(rec_msg: 'Hello, How are you Ibrar?', rec_time: '4:58 pm', sen_msg: 'I am doing well. What\'s about you man?', sen_time: '5:00 pm'),
                const ChatSamples(rec_msg: 'Where are you? i am waiting.', rec_time: '05:01 pm', sen_msg: 'I am in the Computer lab.', sen_time: '05:02 pm')
              ],
            ),
          ),
        ),

        //bottom 
        bottomSheet: Container(
          height: 55,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover
            )
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5,left: 5,bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal:15 , vertical:0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: [
                    const Icon(Icons.emoji_emotions_outlined, size: 26,color: Colors.black38,),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 160,
                      child: TextFormField(
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Message',
                          hintStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 18,
                          ),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    const Icon(Icons.attachment_outlined,
                    color: Colors.black38,
                    ),
                    const SizedBox(width: 10,),
                    const Icon(Icons.camera_alt_outlined,
                    color: Colors.black38,
                    size: 25,
                    )
                  ],
                ),
              ),
          
              //voice icon
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                margin: const EdgeInsets.only(bottom: 8,left: 4,right: 4),
                decoration: BoxDecoration(
                  color: const Color(0xff1DA75E),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.mic,
                  color: Colors.white,
                  size: 24,
                ),
              )
          
            ],
          ),
        ),
    );
  }
}