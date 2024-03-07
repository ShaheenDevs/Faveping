import 'package:faveping/View_widgets/appbar.dart';
import 'package:faveping/View_widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBarSimple(title: "Chats"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(),
            SizedBox(
              height: 50,
              child: buildtextfieldSearch(
                  TextEditingController(), "Search Fave", Icons.search),
            ),
            SizedBox(
              height: 5,
            ),
            Align(alignment: Alignment.topLeft, child: Text("Messages")),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYcpfphM1QJa4z41UmvGY06b0TfmPakWPuxSgbwJorwh7RO7k3ne6Q4ddwQLlkz_FmRkIyhzB86kNNKJRWe8U3-ePSh-O6nhGIpsXirt00aD9raE2y2Il20UzDmGMGxBye9nLtIx0B3Do5tz-1fiUKagp113jS0j5ao5qEOhDqfnne-fLZ75oOegHk0UQ/s1080/Attitude%20Girls%20DP%20For%20WhatsApp%203.jpg"),
              ),
              subtitle: Text(
                "always wanted to talk to you",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              title: Text("Maria"),
              trailing: Icon(
                Icons.done,
                color: Colors.black38,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
