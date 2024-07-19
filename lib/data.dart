// dummy_data.dart
import 'package:flutter/material.dart';
import 'package:tarvenor/model.dart';

final List<Destination> dummyDestinations = [

  Destination(
    name: 'Centara Ras',
    rating: 4.5,
    location: 'Maldives',
    images: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/03/c8/ed/drone-11.jpg?w=1400&h=-1&s=1',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-pMcPZZWD57HZ-ta2-gAME-_9QnyWBTQXvQ&s'
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/03/c9/9d/movie-night-2.jpg?w=1400&h=-1&s=1',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwQ-5eVvrTn8w8l-0GAMYebw6TgisLN8tErw&s',
      'https://media-cdn.tripadvisor.com/media/photo-s/1b/0e/3c/72/shangri-la-s-rasa-sentosa.jpg',
    ],
    price: 248.0,
    about: 'Found within 20 minutes from Velana International Airport by speedboat, Centara Ras Fushi Resort & Spa Maldives is an adults-only retreat in North Male Atoll. Retreat in a tastefully designed ocean-side villa, perfect for barefoot living with the beach at your doorstep or in an overwater villa with steps down to the shimmering lagoon. All 140 villas provide sensational ocean views and blend with the island’s green interior..', date: '12 August 2024',
  ),
  Destination(
    name: 'Taj Resort',
    rating: 4.7,
    location: 'Emboodhu Finolhu',
    images: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/64/e1/6d/taj-exotica-resort-spa.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/64/e1/9a/taj-exotica-resort-spa.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/52/63/f7/24-degrees-restaurant--v5253295.jpg?w=2400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/57/b8/09/taj-exotica-resort-spa.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/6a/84/8c/rehendi-suite.jpg?w=1400&h=-1&s=1'
    ],
    price: 650.0,
    about: 'The Award-winning resort is a sublime fusion of luxury and nature. Nestled amidst one of the largest lagoons in the Maldives. Accommodation is a choice between villas built entirely over water and beach villas. Pan Asian. World Progressive. In villa dining. Interactive dining. Or a romantic dinner for two under the stars... Dining is a culinary adventure. .', date: '24 December 2024',
  ),
  Destination(
    name: 'Hard Rock',
    rating: 4.3,
    location: 'Madrilene',
    images: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/2e/a5/4d/hard-rock-hotel-maldives.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/6d/aa/6f/ariel-view-of-hard-rock.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/03/53/1a/hard-rock-hotel-maldives.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/f3/43/b7/hard-rock-hotel-maldives.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/03/53/32/hard-rock-hotel-maldives.jpg?w=1400&h=-1&s=1',
    ],
    price: 366.0,
    about: 'Located within Emboodhoo Lagoon - the first integrated resort destination in the Maldives and a 15-minute boat ride away from the airport, Hard Rock Hotel Maldives boasts 178 spacious guestrooms including family suites, beach villas, overwater villas and two-bedroom overwater villas, exclusively on a beautiful island.', date: '23 September 2024',
  ),
  Destination(
    name: 'Nihonbashi Resort',
    rating: 4.3,
    location: 'Madrilene',
    images: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzZU49M0iaMsTMdSGKkf5kedR_vEGa9i9_UA&s'
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/a9/3a/06/outdoor-teppanyaki.jpg?w=1400&h=-1&s=1',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtFj4KcrEajRZdo4QyxZgpS-Ewkq8ezZjH4A&s'
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/c7/20/17/caption.jpg?w=1100&h=-1&s=1',
      'https://media.cntraveler.com/photos/53da60a46dec627b149e66f4/master/pass/hilton-moorea-lagoon-resort-spa-moorea-french-poly--110160-1.jpg'
    ],
    price: 250.0,
    about: 'A beautiful resort with breathtaking views and excellent amenities.', date: '12 july 2024',
  ),
  // Add more destinations as needed
];
final List<Message> dummyMessage=[
  Message(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm3RFDZM21teuCMFYx_AROjt-AzUwDBROFww&s', colors: Colors.grey, name: "Hannan Sani ", message: "Hello! How are you", date: "12:30", icon: const Icon(Icons.check,color: Colors.grey,), active: '11:20', textStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
  Message(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-Ne7oVV6Lx9uAnmJDUZrrLcGy8yzo1sXdpQ&s', colors: Colors.green, name: "Luke David ", message: "Typing....", date: "02:00", icon: const Icon(Icons.done_all,color: Colors.green,), active: 'Active Now', textStyle:  const TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),
  Message(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2b9qutatTGJWMI3iMASXm1y_Rnsek4OV1DvFG6zyIp0E7TkZtLpJ8HbZzab_srZrCv_k&usqp=CAU', colors: Colors.grey, name: "Hammad", message: "When you're Free ", date: "01:05", icon: const Icon(Icons.check,color: Colors.grey,), active: '02:30', textStyle:  const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
  Message(image: 'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_man_boy_person_avatar_people_white_tone_icon_159357.png', colors: Colors.grey, name: "Armin ", message: "How are you doing ", date: "05:00", icon: const Icon(Icons.check,color: Colors.grey,), active: '01:20', textStyle:  const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
  Message(image: 'https://cdn.vectorstock.com/i/1000v/06/18/male-avatar-profile-picture-vector-10210618.jpg', colors: Colors.green, name: "Ibad Nazir", message: "Let's go ", date: "03:05", icon: const Icon(Icons.done_all,color: Colors.green,), active: 'Active Now', textStyle:  const TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),
  Message(image: 'https://w7.pngwing.com/pngs/87/237/png-transparent-male-avatar-boy-face-man-user-flat-classy-users-icon.png', colors: Colors.grey, name: "Alex ", message: "Thank you! ", date: "yesterday", icon: const Icon(Icons.done_all,color: Colors.grey,), active: '01:16', textStyle:  const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),


];
final List<Profile> profileData=[
  Profile(icon: const Icon(Icons.person_outline,color: Colors.grey,), name: "Profile"),
  Profile(icon: const Icon(Icons.bookmark_border_outlined,color: Colors.grey,), name: "Bookmarked"),
  Profile(icon: const Icon(Icons.airplane_ticket,color: Colors.grey,), name: "Previous Trips"),
  Profile(icon: const Icon(Icons.settings,color: Colors.grey,), name: "Settings"),
  Profile(icon: const Icon(Icons.error_outline_rounded,color: Colors.grey,), name: "Version"),
];
