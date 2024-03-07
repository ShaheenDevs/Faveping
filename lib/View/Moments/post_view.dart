import 'package:flutter/material.dart';

import 'package:faveping/View_widgets/appbar.dart';
import 'package:get/get.dart';

import '../../View_widgets/back_button.dart';
import '../../View_widgets/my_textfield.dart';
import '../../res/assetsImages/icons.dart';
import '../../res/commons/AppColors/AppColor.dart';
import '../Fave/fave_profile.dart';

class PostView extends StatefulWidget {
  const PostView({
    Key? key,
    required this.imgUrls,
  }) : super(key: key);
  final imgUrls;
  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(title: "Maria's Moments"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  onTap: () => Get.to(FaveProfile()),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYcpfphM1QJa4z41UmvGY06b0TfmPakWPuxSgbwJorwh7RO7k3ne6Q4ddwQLlkz_FmRkIyhzB86kNNKJRWe8U3-ePSh-O6nhGIpsXirt00aD9raE2y2Il20UzDmGMGxBye9nLtIx0B3Do5tz-1fiUKagp113jS0j5ao5qEOhDqfnne-fLZ75oOegHk0UQ/s1080/Attitude%20Girls%20DP%20For%20WhatsApp%203.jpg"),
                  ),
                ),
                subtitle: Text("16:05, 10 Jan, 2024"),
                title: Text("Maria"),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage(AppIcons.menu),
                      height: 20,
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      """Try to stand up 🌻 ;
no more can you fall 🌻.
Life is full of ups and downs; take them in your stride. You will discover your little star hidden inside. """,
                    )),
              ),
              ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.imgUrls.length,
                itemBuilder: (context, i) {
                  print(i.toString());
                  return GestureDetector(
                    child: Card(
                      child: SizedBox(
                        height: Get.height * 0.3,
                        width: Get.width * 0.96,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.network(
                            widget.imgUrls[i],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(PostImageView(
                        imageUrl: widget.imgUrls[i],
                      ));
                    },
                  );
                },
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage(AppIcons.like),
                        height: 20,
                      )),
                  Text(
                    "22 Likes",
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage(AppIcons.comment),
                        height: 20,
                      )),
                  Text(
                    "1 Comments",
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: buildtextfieldComment(
                    TextEditingController(), "write anything", Icons.send),
              ),
              ListTile(
                title: Text(
                  "Comment:  ${1 == "null" ? 0 : 2}",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (cotnext, i) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://designimages.appypie.com/displaypicture/displaypicture-17-face-person.jpg"),
                      ),
                      subtitle: Text(
                        "good to see you again",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      title: Text("Ali Khan"),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class PostImageView extends StatefulWidget {
  final String imageUrl;

  const PostImageView({Key? key, required this.imageUrl}) : super(key: key);

  @override
  _PostImageViewState createState() => _PostImageViewState();
}

class _PostImageViewState extends State<PostImageView> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(title: ""),
      body: Center(
        child: GestureDetector(
          onScaleStart: (ScaleStartDetails details) {
            setState(() {
              _previousScale = _scale;
            });
          },
          onScaleUpdate: (ScaleUpdateDetails details) {
            setState(() {
              _scale = _previousScale * details.scale;
            });
          },
          onScaleEnd: (ScaleEndDetails details) {
            setState(() {
              _previousScale = 1.0;
            });
          },
          child: Transform.scale(
            scale: _scale,
            child: Image.network(
              widget.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
