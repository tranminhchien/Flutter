import 'package:flutter/material.dart';

import 'home_cell/home1_cell_widget.dart';

class BottomItemModal {
  String imgAsset;
  String imgActiveAsset;
  BottomItemModal({
    this.imgActiveAsset,
    this.imgAsset,
  });
}

class Home1Screen extends StatefulWidget {
  @override
  _Home1ScreenState createState() => _Home1ScreenState();
}

class _Home1ScreenState extends State<Home1Screen> {
  PageController _pageController = PageController();
  List<BottomItemModal> listBottomItem = [
    BottomItemModal(
      imgActiveAsset: "assets/images/iconBottom2Active.png",
      imgAsset: "assets/images/Bottom1.png",
    ),
    BottomItemModal(
      imgActiveAsset: "assets/images/iconBottom2Active.png",
      imgAsset: "assets/images/Bottom1.png",
    ),
    BottomItemModal(
      imgActiveAsset: "assets/images/iconBottom2Active.png",
      imgAsset: "assets/images/Bottom1.png",
    ),
    BottomItemModal(
      imgActiveAsset: "assets/images/iconBottom2Active.png",
      imgAsset: "assets/images/Bottom1.png",
    ),
    BottomItemModal(
      imgActiveAsset: "assets/images/iconBottom2Active.png",
      imgAsset: "assets/images/Bottom1.png",
    ),
  ];
  int _selectedIndex = 0;
  Widget bottomBarCell(BottomItemModal data, int index) {
    return Container(
      width: 30,
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedOpacity(
            opacity: _selectedIndex == index ? 1 : 0,
            duration: Duration(milliseconds: 250),
            child: ClipOval(
              child: Container(
                width: 10,
                height: 10,
                color: Colors.redAccent,
              ),
            ),
          ),
          Image.asset(
            _selectedIndex == index ? data.imgActiveAsset : data.imgAsset,
          ),
        ],
      ),
    );
  }

  Widget customeBottomBarWidget({ValueChanged<int> onTap}) {
    return SizedBox(
      height: 78,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          listBottomItem.length,
          (index) => GestureDetector(
            onTap: ()=>onTap(index),
            child: bottomBarCell(listBottomItem[index], index),
          ),
        ),
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     GestureDetector(
      //       onTap: (){
      //         setState(() {
      //           _selectedIndex = 0;
      //         });
      //         onTap(_selectedIndex);
      //       },
      //       child: Container(
      //         width: 30,
      //         height:_selectedIndex == 0 ? 50: 30,
      //         color: Colors.white,
      //         alignment: Alignment.bottomCenter,
      //         child:Image.asset(
      //           _selectedIndex == 0 ? "assets/images/iconBottom1Active.png":"assets/images/Bottom1.png",
      //         ),
      //       ),
      //     ),
      //     GestureDetector(
      //       onTap: () => onTap(1),
      //       child: Container(
      //         width: 30,
      //         height: 30,
      //         color: Colors.red,
      //       ),
      //     ),
      //     GestureDetector(
      //       onTap: () => onTap(2),
      //       child: Container(
      //         width: 30,
      //         height: 30,
      //         color: Colors.red,
      //       ),
      //     ),
      //     GestureDetector(
      //       onTap: () => onTap(3),
      //       child: Container(
      //         width: 30,
      //         height: 30,
      //         color: Colors.red,
      //       ),
      //     ),
      //     GestureDetector(
      //       onTap: () => onTap(4),
      //       child: Container(
      //         width: 30,
      //         height: 30,
      //         color: Colors.red,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child: Image.asset(
            "assets/images/HomeTitle.png",
          ),
        ),
        backgroundColor: Colors.white,
        leading: ClipOval(
          child: Container(
            width: 35,
            height: 35,
            child: Image.asset(
              "assets/images/Leading.png",
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: PageView(
          controller: _pageController,
          children: [
            ListView.separated(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Home1CellWidget();
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                );
              },
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
        ),
      ),
      bottomNavigationBar: customeBottomBarWidget(onTap: (v) {
        setState(() {
          _selectedIndex = v;
        });
        _pageController.animateToPage(v,
            duration: Duration(milliseconds: 250), curve: Curves.easeInOut);
      }),
      // SizedBox(
      //   height: 208,
      //   child: BottomNavigationBar(
      //     type: BottomNavigationBarType.shifting,
      //     showSelectedLabels: false,
      //     onTap: (v){
      //       setState(() {
      //         _selectedIndex = v;
      //       });
      //       _pageController.animateToPage(v, duration: Duration(milliseconds:250), curve: Curves.easeInOut);
      //     },
      //     currentIndex:_selectedIndex ,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage('assets/images/Bottom1.png'),
      //           color: Colors.grey,
      //         ),
      //         activeIcon:ImageIcon(
      //           AssetImage('assets/images/iconBottom1Active.png'),
      //           color: Colors.amber,
      //         ) ,
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage('assets/images/Bottom2.png'),
      //            color: Colors.grey,
      //         ),
      //          activeIcon:ImageIcon(
      //           AssetImage('assets/images/iconBottom2Active.png'),
      //           color: Colors.amber,
      //         ) ,
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage('assets/images/Bottom3.png'),
      //           color: Colors.grey,
      //         ),
      //          activeIcon:ImageIcon(
      //           AssetImage('assets/images/iconBottom1Active.png'),
      //         ) ,
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage('assets/images/Bottom4.png'),
      //            color: Colors.grey,
      //         ),
      //          activeIcon:ImageIcon(
      //           AssetImage('assets/images/iconBottom1Active.png'),
      //         ) ,
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage('assets/images/Bottom5.png'),
      //            color: Colors.grey,
      //         ),
      //          activeIcon:ImageIcon(
      //           AssetImage('assets/images/iconBottom1Active.png'),
      //         ) ,
      //         label: '',
      //       ),
      //     ],
      //     // selectedItemColor: Colors.amber[800],
      //     // unselectedItemColor: Colors.grey,
      //   ),
      // ),
    );
  }
}
