import 'package:flutter/material.dart';
import 'package:whatsapp/chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  List images = [
    'images/profile1.jpg',
    'images/profile2.jpg',
    'images/profile3.jpg',
    'images/profile7.jpg',
    'images/profile5.jpg',
    'images/profile1.jpg',
    'images/profile7.jpg',
  ];

  List names = [
    'Hammad',
    'Hammad',
    'Qaiser Ali',
    'Hashir',
    'Imran Khan',
    'Muhammad Ibrar',
    'Ibad-ur-Rehman'
  ];

  List msgTiming = [
    '05:40 Am',
    'yesterday',
    'yesterday',
    '12/5/2024',
    '05:30 pm',
    '30/4/2024',
    '4/2/2024',
  ];
  List msg = [
    'Hi How are you?',
    'Where are you?',
    'ok! all right',
    'Good Bye',
    'Nice to meet you',
    'Nice to meet you',
    'Have a nice day'
  ];
  
  List msgRead = [
    true,
    false,
    true,
    true,
    false,
    true,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Custom app bar
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, bottom: 15),
            child: Row(
              children: [
                const Text(
                  'WhatsApp',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1DA75E),
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 28,
                  ),
                ),
                PopupMenuButton(
                  // onSelected: (selected == 5) {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                  // },
                  elevation: 10,
                  iconSize: 28,
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text(
                        'New Group',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text(
                        'New Broadcast',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text(
                        'Linked devices',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text(
                        'Starred messages',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          
          // Search container
          Container(
            margin: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
            decoration: BoxDecoration(
              color: const Color(0xfff6f5f3),
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search....',
                  border: InputBorder.none),
            ),
          ),
          
          // Archived section
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 1),
            child: Row(
              children: [
                Icon(
                  Icons.archive,
                  size: 30,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Archived',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  '5',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff1DA75E),
                  ),
                ),
              ],
            ),
          ),

          // Expanded ListView to make chats scrollable
          Expanded(
            child: ListView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: ListTile(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChatScreen()));
                    },
                    leading: CircleAvatar(
                      maxRadius: 28,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text(names[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17)),
                    subtitle: Text(
                      msg[index],
                      style: const TextStyle(color: Color(0xff636f75)),
                    ),
                    trailing: msgRead[index]
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                msgTiming[index],
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff1DA75E),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                alignment: Alignment.center,
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: const Color(0xff1DA75E),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  '5', // Unread message count
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                msgTiming[index],
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color(0xff1DA75E),
        child: Center(child: Image.asset('images/send.jpg'),),
        ),
    );
  }
}
