import 'package:flutter/material.dart';
import 'package:flutter_themedemo/color.dart';
import 'package:flutter_themedemo/pages/appbarmain.dart';
import 'package:flutter_themedemo/pages/maindrawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map userData = {};
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //userData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const AppBarMain(),
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Search box
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: search,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: purplePrimary,
                  ),
                  filled: true,
                  fillColor: whitePerl,
                ),
              ),
            ),

            //Lasted News
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lasted News',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Text('See more'),
                    label: const Icon(
                      Icons.play_arrow_sharp,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ),

            //List view data horizontal
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                        color: null,
                        width: 300,
                        child: Image.asset('assets/images/news.png'),
                      ),
                    );
                  }),
            ),

            //Popular News
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular News',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Text('See more'),
                    label: const Icon(
                      Icons.play_arrow_sharp,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ),

            //List view data vertical
            Container(
              height: 400,
              color: null,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/news.png',
                            width: 200,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Social Media',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  'Social media refers to websites and applications that are designed to allow people to share content quickly',
                                  textAlign: TextAlign.justify,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}