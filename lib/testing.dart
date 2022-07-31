import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ride_complete_page/history_model.dart';

class Histories extends StatefulWidget {
  const Histories({Key? key}) : super(key: key);

  @override
  State<Histories> createState() => _HistoriesState();
}

class _HistoriesState extends State<Histories> {
  @override
  Widget build(BuildContext context) {
    List<HistoryModel> historyDummy = [
      HistoryModel(
          destination: 'adfs', time: 'af', source: 'adfs', rideId: 'afsd'),
      HistoryModel(
          destination: 'adfs', time: 'af', source: 'adfs', rideId: 'afsd'),
      HistoryModel(
          destination: 'adfs', time: 'af', source: 'adfs', rideId: 'afsd'),
      HistoryModel(
          destination: 'adfs', time: 'af', source: 'adfs', rideId: 'afsd'),
      HistoryModel(
          destination: 'adfs', time: 'af', source: 'adfs', rideId: 'afsd'),
      HistoryModel(
          destination: 'adfs', time: 'af', source: 'adfs', rideId: 'afsd'),
      HistoryModel(
          destination: 'adfs', time: 'af', source: 'adfs', rideId: 'afsd'),
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Card(
              elevation: 10,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(children: [
                  Column(
                  children: [
                    Icon(Icons.my_location),
                    SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      "assets/images/nav.png",
                      fit: BoxFit.cover,
                      height: 60,
                    ),
                    Icon(Icons.near_me)
                  ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(historyDummy[index].source),
                        SizedBox(
                          height: 50,
                        ),
                        Text(historyDummy[index].destination),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(historyDummy[index].time),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print(historyDummy[index].rideId);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff172B4D),
                          ),
                        child: Container(
                          width: 60,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Center(
                              child: Text("View"),
                            ),
                          ),
                        ),
                      ),
                      Text(historyDummy[index].destination),
                    ],
                  ),
                ]), // Row
              ), // Container
            ),
          ); // Card
        },
        itemCount: historyDummy.length,
      ), // ListView.builder
    ); // Container
    ///
  }
}
