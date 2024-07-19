import 'package:flutter/material.dart';
import 'package:tarvenor/data.dart';
import 'package:tarvenor/screens/message_detail.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.06),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    child: IconButton(
                      onPressed: () {
                        // Add your functionality here
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Messages",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    child: IconButton(
                      onPressed: () {
                        // Add your functionality here
                      },
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.04,
              ),
              Row(
                children: [
                  const Text(
                    "Messages",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_box_outlined,
                        size: 30,
                      ))
                ],
              ),
              SizedBox(
                height: screenWidth * 0.06,
              ),
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search for chats and messages",
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(128, 128, 128, 0.1),
                    focusColor: Colors.white10,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(128, 128, 128,
                              0.2)), // Set the border color to grey for enabled state
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(128, 128, 128,
                              0.1)), // Set the border color to grey for focused state
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(128, 128, 128, 0.2)),
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              SizedBox(
                height: screenWidth * 0.06,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: dummyMessage.length,
                    itemBuilder: (context, index) {
                      final data = dummyMessage[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MessageDetail(message: data)));
                          },
                          child: ListTile(
                            leading: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(data.image),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Icon(
                                    Icons.circle_sharp,
                                    color: data.colors,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                            title: Text(
                              data.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              data.message,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                data.icon,
                                const SizedBox(width: 5),
                                Text(
                                  data.date,
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
