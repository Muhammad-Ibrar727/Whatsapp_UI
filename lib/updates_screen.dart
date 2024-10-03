import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: AppBar(
              title: const Text('Updates'),
              actions: [
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 28,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.search,
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
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Status',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    Icon(Icons.more_vert, size: 26,)
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey, width: 3),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset('images/status1.jpg',height: 55,width: 55,fit: BoxFit.cover,),
                      ),
                    ),
                    
                    // My status and time 
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('My Status',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text('Today, 6:00 pm',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                          ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
