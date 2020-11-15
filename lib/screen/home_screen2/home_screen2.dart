import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreeen2 extends StatefulWidget {
  @override
  _HomeScreeen2State createState() => _HomeScreeen2State();
}

class _HomeScreeen2State extends State<HomeScreeen2> {
  List<Widget> imageSliders = [
    Container(
      width: 297,
      height: 297,
      color: Colors.red,
    ),
    Container(
      width: 297,
      height: 297,
      color: Colors.blue,
    ),
    Container(
      width: 297,
      height: 297,
      color: Colors.yellow,
    ),
    Container(
      width: 297,
      height: 297,
      color: Colors.orange,
    ),
    Container(
      width: 297,
      height: 297,
      color: Colors.amberAccent,
    ),
  ];

  PageController controller = PageController(viewportFraction: 0.8);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) { 
          return CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.pink[100],
              leading: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.badge,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 45,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                //color: Colors.greenAccent,
                height: 297,
                child: CarouselSlider(
                 // carouselController: _controller,
                  options: CarouselOptions(
                    onPageChanged: (v,c){
                      setState(() {
                        _currentIndex = v;
                      });
                    },
                    aspectRatio: 1.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    autoPlay: false,
                  ),
                  items: imageSliders,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 70,
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: _currentIndex, 
                  count: 5,
                  effect: WormEffect() ,
                ),
              )
            ),
            SliverPadding(
              padding:const EdgeInsets.all(15) ,
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                 (BuildContext context, int index){
                   return Container(
                     color:index.isEven ? Colors.tealAccent: Colors.purpleAccent,
                   );
                 },
                 childCount: 10,
                ), 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: orientation == Orientation.landscape ? 3: 2,
                    childAspectRatio: 159/244,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
              ),
            )
          ],
        );
         },
      ),
    );
  }
}
