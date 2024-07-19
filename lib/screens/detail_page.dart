import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarvenor/model.dart';

class DetailPage extends StatefulWidget {
  final Destination destination;

  const DetailPage({super.key, required this.destination});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late String currentImage;

  @override
  void initState() {
    super.initState();
    currentImage = widget.destination.images[0]; // Set initial image
  }

  void changeImage(String newImage) {
    setState(() {
      currentImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              height: screenHeight * 0.50,
              fit: BoxFit.fill,
              image: NetworkImage(currentImage),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.6),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.6),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: screenHeight * 0.55,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.06),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: screenWidth * 0.06,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.destination.name,
                                        style: const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        widget.destination.location,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTtYlMT_y-EHdA3AHXBo3PNPDApVNmmbAKSQ&s",
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenWidth * 0.03,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    widget.destination.location,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    widget.destination.rating.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "(2498)",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "\$${widget.destination.price}",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    "/Person",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenWidth * 0.05,
                              ),
                              SizedBox(
                                height: screenHeight * 0.15,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: widget.destination.images.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          changeImage(widget.destination.images[index]);
                                        },
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image(
                                            width: screenWidth * 0.20,
                                            fit: BoxFit.cover,
                                            image: NetworkImage(widget.destination.images[index]),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: screenWidth * 0.05,
                              ),
                              const Text(
                                "About Destination",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: screenWidth * 0.03,
                              ),
                              Text(
                                widget.destination.about,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: screenWidth * 0.05,
                              ),
                              Container(
                                width: screenWidth * 0.80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                ),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Book Now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
