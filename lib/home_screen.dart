

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'description_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final myitems = [
    Image.asset('istockphoto-1066557736-612x612.jpg'),
    Image.asset('istockphoto-1325276224-612x612.jpg'),
    Image.asset('istockphoto-1355277961-612x612.jpg'),
  ];

  int myCurrentIndex = 0;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Individual Meetup",
          style: TextStyle(color: Colors.blueAccent[100]),
        ),
      ),
      body: Expanded(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  // height: 250,
                  width: 375,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      contentPadding: const EdgeInsets.all(16.0),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CarouselSlider(options: CarouselOptions(
                        autoPlay: true,
                        height: 200,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: const Duration(
                            milliseconds: 800),
                        autoPlayInterval: const Duration(seconds: 2),
                        onPageChanged: (index, reason) {
                          setState(() {
                            myCurrentIndex = index;
                          });
                        }
                    ),
                      items:
                      myitems,
        
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Trending Popular People", style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                ],
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70,
                            width: 180,
                            child: Image.asset(
                                'istockphoto-1066557736-612x612.jpg'),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Author"),
                          // const Text("1028 meetups"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70,
                            width: 180,
                            child: Image.asset(
                                'istockphoto-1325276224-612x612.jpg'),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Meeting"),
                          // const Text("1028 meetups"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70,
                            width: 180,
                            child: Image.asset(
                                'istockphoto-1355277961-612x612.jpg'),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Author"),
                          // const Text("1028 meetups"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Top Trending Meetups", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Expanded(
              child: Container(
                height: 170,
                child: InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DescriptionPage())),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildCard(),
                      separatorBuilder: (context, _) => const SizedBox(width: 12,),
                      itemCount: 5,
                  ),
                ),
              ),
            ),
        
          ],
        ),
      ),
      bottomNavigationBar:
      Expanded(
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(16)),
          child: BottomNavigationBar(currentIndex: 2,
            elevation: 0.0,
            selectedItemColor: Colors.indigo,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_chart_sharp), label: "Prolet"),
              BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon: Icon(Icons.handshake), label: "Meetup"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.file_copy_outlined), label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded), label: "Account"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard() =>
      Container(
        width: 200,
        height: 200,
        child: Image.asset('topmeet.jpg',),
      );



}
