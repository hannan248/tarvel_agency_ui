import 'package:flutter/material.dart';
import 'package:tarvenor/data.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.6),
                      child: IconButton(
                        onPressed: () {
                          // Add your functionality here
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "Search",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.mic_none_outlined,
                        color: Colors.grey,
                      ),
                      hintText: "Search Places",
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromRGBO(128, 128, 128, 0.1),
                      focusColor: Colors.white10,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(128, 128, 128,
                                0.2)), // Set the border color to grey for enabled state
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(128, 128, 128,
                                0.1)), // Set the border color to grey for focused state
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(128, 128, 128, 0.2)),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                const Text(
                  "Search Places",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Container(
                  height: screenHeight * 0.6, // Set a fixed height for the GridView
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dummyDestinations.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75, // Adjust childAspectRatio as needed
                    ),
                    itemBuilder: (context, index) {
                      final destination = dummyDestinations[index];
                      return SizedBox(
                        width: screenWidth * 0.40,
                        child: Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        destination.images[0],
                                        fit: BoxFit.fill,
                                        width: double.infinity,
                                        height: screenHeight * 0.15,
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: IconButton(
                                        icon: const Icon(Icons.bookmark_outline),
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
                                    Expanded(
                                      child: Text(
                                        destination.name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
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
                                    Expanded(
                                      child: Text(
                                        destination.location,
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
