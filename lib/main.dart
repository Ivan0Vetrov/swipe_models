import 'package:flutter/material.dart';
import 'child_widget.dart';
import 'swipe1.dart';
import 'swipe2.dart';
import 'child_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Slidable Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
     this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController = PageController(
    initialPage: 0,
  );
  int currentIndex = 0;

  Widget childWidget = ChildWidget(
    number: AvailableNumber.First,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey[500],
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            _pageController.animateToPage(
              value,
              duration: Duration(milliseconds: 200),
              curve: Curves.linear,
            );

            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("First"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up),
              title: Text("Second"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("Third"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("Third"),
            ),
          ],
        ),

        body: PageView(
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              currentIndex = page;
            });
          },
          children: <Widget>[

            swipe1(),
            swipe2(),
            ChildWidget(number: AvailableNumber.Second,),
            ChildWidget(number: AvailableNumber.Third,),
          ],
        ),
      );


}
