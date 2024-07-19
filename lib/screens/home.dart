import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarvenor/data.dart';
import 'package:tarvenor/screens/detail_page.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        border: Border.all(color: Colors.grey.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTtYlMT_y-EHdA3AHXBo3PNPDApVNmmbAKSQ&s"),
                            ),
                          ),
                          Text(
                            'Hannan Sani',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_outlined)),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          fontSize: 43,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      children: <TextSpan>[
                        const TextSpan(text: 'Explore the Beautiful '),
                        TextSpan(
                          text: 'World!',
                          style: GoogleFonts.lobster(
                            color: Colors.deepOrange,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.10,
                ),
                Row(
                  children: [
                    const Text(
                      "Best Destination",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                SizedBox(
                  height: screenHeight * 0.47,
                  width: screenWidth,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dummyDestinations.length,
                    itemBuilder: (context, index) {
                      final destination = dummyDestinations[index];
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailPage(
                                destination: destination,
                              )));
                        },
                        child: SizedBox(
                          width: screenWidth * 0.70,
                          child: Card(
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(20),
                                        child: Image.network(
                                          destination.images[0],
                                          fit: BoxFit.fill,
                                          width: double.infinity,
                                          height: screenHeight * 0.33,
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        child: IconButton(
                                          icon: const Icon(
                                              Icons.bookmark_outline),
                                          color: Colors.white,
                                          onPressed: () {
                                            // Add your save functionality here
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenWidth * 0.04,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        destination.name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        destination.rating.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on_outlined),
                                      Text(
                                        destination.location,
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
