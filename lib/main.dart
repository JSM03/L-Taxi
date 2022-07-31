import 'package:flutter/material.dart';
import 'package:ride_complete_page/testing.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
void main() {
  runApp(const MaterialApp(home: Histories()));
  //runApp(const MaterialApp(home: myApp()));
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Ridecomlete(),
    );
  }
}


class Ridecomlete extends StatefulWidget {
  const Ridecomlete({Key? key}) : super(key: key);

  @override
  State<Ridecomlete> createState() => _RidecomleteState();
}

class _RidecomleteState extends State<Ridecomlete> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(_size.width,50),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff190E45),
                Color(0xff5339A5),
                Color(0xff5E43AE),
              ],
            ),

          ),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: const Text("Your Bill"),
            centerTitle: true,
            actions: [
              TextButton(
                child: const Text(
                  "Support?",
                  style: const TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: _size.height,
        width: _size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/success.jpg",
                  scale: 3,),
                  const SizedBox(
                    width: 0,
                  ),
                  const Text(
                    "Ride Complete",
                    style: TextStyle(fontSize: 35),
                  ),
                ],
      ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "\u20B9 251.55",
              style: const TextStyle(fontSize: 50,color: Color(0xff32325D)),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 0,
                    child: Column(
                      children: const [
                  Icon(
                    Icons.my_location,
                    color: Colors.green,
                    size: 30,
                  ),
                        SizedBox(
                          height: 5,
                        ),
                  Text(
                    "Koovappally,\n"
                        "Kanjirappally,\n"
                        "686518",
                    textAlign: TextAlign.center,style: TextStyle(fontSize: 16),
                  )
                        ],
                    ),
              ),
      Expanded(
        flex: 9,
        child: Image.asset(
              "assets/images/complete_ride_arrow.png"
        ,scale: 3,),
      ),
                  Expanded(
                  flex: 0,
                  child: Column(
                      children: const [
                      Icon(
                        Icons.near_me,
                        color: Colors.red,
                        size: 30,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Erumely,\n686519",
                        textAlign: TextAlign.center,style: TextStyle(fontSize: 16),
                      )
                      ],
                  ),
                  ),
      ],
        ),
            ),
            Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          elevation: 10,
                          child: Column(
                            children:  [
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                                "How was your ride?",
                              style: TextStyle(fontSize: 18),
                            ),
                              const SizedBox(
                                height: 10,
                              ),
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                              const SizedBox(
                                height: 10,
                              ),
                          ],
                          ),
                      ),
                    ),
                    ),
                    Positioned(
                      left: (_size.width*0.5) - 62,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/images/thumbsup.png",
                          width: 80,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                )
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff172B4D),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text("Done"),
                ),
              ),
            ),
            ),
      ],
      ),
    ),
    );
  }
}


