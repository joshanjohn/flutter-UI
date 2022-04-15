import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/video_card.dart';
import 'package:youtube_clone/videocardlist/element_list.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
  // MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Image.asset(
          'assets/logo.png',
          width: 100,
        ),
        // centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //sections 1
              const Text(
                'Explore',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),

              //filter chips
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text('Gaming'),
                        onSelected: (value) {},
                        pressElevation: 0.5,
                        elevation: 0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text('Flutter Programming'),
                        onSelected: (value) {},
                        pressElevation: 0.5,
                        elevation: 0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text('Kerala news'),
                        onSelected: (value) {},
                        pressElevation: 0.5,
                        elevation: 0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text('Mars'),
                        onSelected: (value) {},
                        elevation: 0,
                        pressElevation: 0.5,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text('Firebase freeCodeCamp'),
                        onSelected: (value) {},
                        pressElevation: 0.5,
                        elevation: 0,
                      ),
                    )
                  ],
                ),
              ),

              //section 2

              const Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(
                height: 40,
              ),
              //video card

              VideoCard(items[0]),
              VideoCard(items[1]),
              VideoCard(items[2]),
              VideoCard(items[3]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.red,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection), label: 'Shorts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined),
              label: 'New Video'),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play), label: 'Playlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
