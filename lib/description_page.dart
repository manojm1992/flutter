import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';



class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> with TickerProviderStateMixin {

  void sharePressed(){
    String context = 'check out eclectify university, where you cab become an'
        'Elite Flutter Developer in no time: https://eclectify-university.wen.app'
    ;
    Share.share(context);
  }


  List<String> assets = [
    'mettups.jpg',
    'istockphoto-1066557736-612x612.jpg',
    'istockphoto-1325276224-612x612.jpg',
    'istockphoto-1355277961-612x612.jpg',
    '360_F_416571932_TTkIBxTvRnsAYyyRFhiOmgZ5QCcQ92lT.jpg'
  ];
  final color = [
    Colors.red,
    Colors.amber,
    Colors.teal,
    Colors.blueGrey,
    Colors.blue,
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Description"),
      ),
      body: Expanded(
        child: Column(
          children: [
            Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      itemCount: assets.length,
                      padEnds: false,
                      pageSnapping: false,
                      physics: const BouncingScrollPhysics(),
                      reverse: true,
                      controller:
                      PageController(initialPage: 3, viewportFraction: 0.7),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            //  color: color[index],
                              borderRadius: BorderRadius.circular(25)),
                          child: Image.asset(
                            assets[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      itemCount: assets.length,
                      physics: const BouncingScrollPhysics(),
                      controller:
                      PageController(initialPage: 0, viewportFraction: 0.7),
                      onPageChanged: (value) {
                        currentindex = value;
                        setState(() {});
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            //  color: color[index],
                              borderRadius: BorderRadius.circular(25)),
                          child: Image.asset(
                            assets[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
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
                            child:
                                Image.asset('istockphoto-1355277961-612x612.jpg'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // const Text("1028 meetups"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.save_alt,color: Colors.black54,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.save,color: Colors.black54,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken_rounded,color: Colors.black54,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.crop_square_rounded,color: Colors.black54,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: Colors.black54,),),
                IconButton(onPressed:() {
                  sharePressed();

                },icon: Icon(Icons.share,color: Colors.black54,))
              ],
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.save_alt_sharp,color: Colors.lightBlue,)),
                  const Text("1034",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
                  const SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken_rounded,color: Colors.lightBlue,)),
                  const Text("1034",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
                  const SizedBox(width: 10,),
                 const Icon(Icons.star,color: Colors.blueAccent,),
                  const Icon(Icons.star,color: Colors.blueAccent,),
                  const Icon(Icons.star,color: Colors.blueAccent,),
                  Icon(Icons.star,color: Colors.blue[100],),
                  const Icon(Icons.star,color: Colors.white,),
                  const SizedBox(width: 4,),
                  const Text("3.2",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.blueAccent),),
                ],
              ),
            ),
            const SizedBox(height: 60,),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Text("Actor Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Text("Indian Actress",style: TextStyle(fontSize: 18,color: Colors.black),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Icon(Icons.watch_later_outlined),
                  SizedBox(width: 5,),
                  Text("Duration 20 Mins",style: TextStyle(fontSize: 20,color: Colors.black),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Icon(Icons.file_open_outlined,size: 20,),
                  SizedBox(width: 5,),
                  Text("Total Average Fees 9,999",style: TextStyle(fontSize: 16),),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Text("About",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            const Padding(padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Expanded(
                      child: Text("From cardiovascular health to fitness, flexibility, balance, Stress relief, better sleep, increased congnitive performmance, and more, you can reap all of these benefits in just one session out on the waves. So, you may find yourself wondering what are the benefits of going on a surf camp.",)),
        
                ],
              ),
            ),
            const SizedBox(height: 7,),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("See More",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent),)
                ],
              ),
            )
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





}


