import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tarvenor/data.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  late final ValueNotifier<DateTime> _focusedDay;
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _focusedDay = ValueNotifier(DateTime.now());
    _selectedDay = DateTime.now();
  }

  @override
  void dispose() {
    _focusedDay.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
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
                      "Schedule",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.6),
                      child: IconButton(
                        onPressed: () {
                          // Add your functionality here
                        },
                        icon: const Icon(
                          Icons.bookmark_border_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Card(
                child: TableCalendar(
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _focusedDay.value,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay.value = focusedDay; // update `_focusedDay` here as well
                    });
                  },
                  calendarFormat: CalendarFormat.week,
                  daysOfWeekHeight: 30,
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    leftChevronIcon: Icon(Icons.chevron_left),
                    rightChevronIcon: Icon(Icons.chevron_right),
                  ),
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: true,
                    selectedDecoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    todayDecoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    defaultTextStyle: const TextStyle(color: Colors.black),
                    weekendTextStyle: const TextStyle(color: Colors.black),
                    outsideDaysVisible: false,
                  ),
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(color: Colors.black),
                    weekendStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  const Text(
                    'My Schedule',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        // Add your functionality here
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: dummyDestinations.length,
                  itemBuilder: (context, index) {
                    final destination = dummyDestinations[index];
                    return SizedBox(
                      width: double.infinity,
                      height: screenHeight * .20,
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image(
                                  fit: BoxFit.fill,
                                  width: screenWidth * 0.30,
                                  height: screenWidth * 0.30,
                                  image: NetworkImage(destination.images[0]),
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.calendar_month),
                                        const SizedBox(width: 10,),
                                        Text(
                                          destination.date,
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Text(
                                      destination.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.location_on_outlined),
                                        const SizedBox(width: 10,),
                                        Text(
                                          destination.location,
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  // Add your functionality here
                                },
                                icon: const Icon(Icons.arrow_forward_ios),
                              )
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
    );
  }
}
