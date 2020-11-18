import 'dart:ui';

import 'package:flutter/material.dart';

class StreamBoardDetailScreen extends StatelessWidget {
  final StreamboardMockData data = StreamboardMockData(
    imgBackUrl:
        "https://trainghiemso.vn/wp-content/uploads/2019/12/VNG-Campus-2-450x600.jpg",
    title: "The Do Good Guide",
    hashTags: ["Give back", "Something2", "Something3","Give back", "Something2", "Something3","Give back", "Something2", "Something3","Give back", "Something2", "Something3",],
    description:
        "This is description This is description This is descriptionThis is description This is description This is description This is description",
    avatarUrl:
        "https://i.pinimg.com/736x/87/f2/6f/87f26f03b9326f2cd85d9399ed403ab5.jpg",
    name: "Dotty",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: StreamBoardApp(
              expandedHeight: 600,
              data: data,
            ),
          ),
        ],
      ),
    );
  }
}

class JoinDiscussionWidget extends StatefulWidget {
  @override
  _JoinDiscussionWidgetState createState() => _JoinDiscussionWidgetState();
}

class _JoinDiscussionWidgetState extends State<JoinDiscussionWidget> {
  double widthBtn = 200;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        widthBtn = 100;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(color: Colors.white, width: 0.5),
      ),
      child: Row(
        children: [
          Icon(
            Icons.message,
            color: Colors.white,
          ),
          Text(
            "1",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          AnimatedContainer(
            width: widthBtn,
            height: 35,
            duration: Duration(
              milliseconds: 250,
            ),
            decoration: BoxDecoration(
              color: widthBtn == 200 ?Colors.white:Colors.black,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                "Join the discussion",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StreamBoardApp extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final StreamboardMockData data;
  StreamBoardApp({
    @required this.expandedHeight,
    @required this.data,
  });
  List<Widget> listTag(List<String> tags) {
    List<Widget> widgetReturn = [];
    tags.forEach((element) {
      Widget tag = Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Text(
          element,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
      widgetReturn.add(tag);
    });
    return widgetReturn;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      color: Colors.redAccent,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: expandedHeight,
            child: Image.network(
              data.imgBackUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.3),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(left:20,right:20,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "ajksdhkfghaskljfhkjasdhfkljh lkajshdfljkhasldkjhf aslkjdhfgljhasdjk aslkdgfkljghasdlfjhas alksgfkljhashgdlkjfgsahkljgfjkas",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height:20),
                  Container(
                    width: double.infinity,
                    child: Wrap(
                     spacing: 5,
                      runSpacing: 5,
                      children: listTag(data.hashTags),
                    ),
                  ),
                  SizedBox(height:20),
                  Text(
                    data.description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height:20),
                  Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          data.avatarUrl,
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(width:5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Curated by",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              data.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:20),
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 0.5,
                      ),
                      Positioned(
                        top: 0,
                        left: -20,
                        right: -20,
                        bottom: 0,
                        child: Container(
                          width:  MediaQuery.of(context).size.width,
                          height: 0.25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:20),
                  Row(
                    children: [
                      JoinDiscussionWidget(),
                      Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(color: Colors.white, width: 0.5),
                        ),
                        child: Center(
                          child: Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: IconButton(
              icon: Icon(
                Icons.more_horiz_sharp,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}

class StreamboardMockData {
  final String imgBackUrl;
  final String title;
  final List<String> hashTags;
  final String description;
  final String avatarUrl;
  final String name;
  StreamboardMockData({
    @required this.imgBackUrl,
    @required this.title,
    @required this.hashTags,
    @required this.description,
    @required this.avatarUrl,
    @required this.name,
  });
}
