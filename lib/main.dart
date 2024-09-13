import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HotelHomePage(),
  ));
}

class HotelHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotel, Oasis')),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/hotel4.jpg'), // Add your image asset
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(children: <Widget>[
            SizedBox(height: 40),
            Text(
              'Welcome to our Hotel',
              style: TextStyle(
                fontSize: 40,
                color: const Color.fromARGB(255, 21, 21, 21),
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Oasis',
              style: TextStyle(
                  fontSize: 40, color: const Color.fromARGB(255, 21, 21, 21)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
          ]),
        ),
      ]),
      drawer: HotelDrawer(),
    );
  }
}

class HotelDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text(
            'Hotel Details',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'About our hotel',
            style: TextStyle(
                fontSize: 24, color: const Color.fromARGB(255, 20, 19, 19)),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AboutHotelPage()),
            );
          },
        ),
        ListTile(
          title: Text(
            'Customer Details',
            style: TextStyle(
                fontSize: 24, color: const Color.fromARGB(255, 18, 18, 18)),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CustomerDetailsPage()),
            );
          },
        ),
        ListTile(
          title: Text(
            'Give Feedback',
            style: TextStyle(
                fontSize: 24, color: const Color.fromARGB(255, 23, 23, 23)),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => FeedbackPage()),
            );
          },
        ),
      ]),
    );
  }
}

class AboutHotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About our Hotel')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Hotel Oasis',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    color: const Color.fromARGB(255, 21, 20, 20),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              // Replace with your hotel image
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.pink[300],
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Hotel Oasis is a peaceful and cozy retreat for travelers seeking relaxation and tranquility. Our hotel is located in a picturesque setting with stunning views of the surrounding mountains and lush greenery.',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Amenities',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.cyan[300],
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Our amenities include comfortable rooms, a relaxing spa, a gourmet restaurant, and a beautiful garden. We aim to make your stay a memorable one.',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.pink[300],
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Address: 123 Tranquil Lane, Serenity Town\nPhone: +1 (123) 456-7890\nEmail: info@hotel_oasis.com',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerDetailsPage extends StatefulWidget {
  @override
  _CustomerDetailsPageState createState() => _CustomerDetailsPageState();
}

class _CustomerDetailsPageState extends State<CustomerDetailsPage> {
  String selectedRoomType = 'Single/Double'; // Default room type
  bool roomBooked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customer Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Customer is our King',
                style: TextStyle(
                  fontSize: 34,
                  decoration: TextDecoration.underline,
                  color: Colors.pink[300],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'So please enter your details below to enjoy your accommodation with us:',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 25, 24, 24),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: "Customer's Name"),
              ),
              SizedBox(height: 20),
              Text(
                'Select the type of room:',
                style: TextStyle(
                    fontSize: 24,
                    decoration: TextDecoration.underline,
                    color: Colors.teal[600]),
              ),
              Column(
                children: <Widget>[
                  RadioListTile(
                    title: Text(
                      'Single/Double',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 25, 24, 24),
                      ),
                    ),
                    value: 'Single/Double',
                    groupValue: selectedRoomType,
                    onChanged: (value) {
                      setState(() {
                        selectedRoomType = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      'Suites',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 25, 24, 24),
                      ),
                    ),
                    value: 'Suites',
                    groupValue: selectedRoomType,
                    onChanged: (value) {
                      setState(() {
                        selectedRoomType = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      'Deluxe rooms',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 25, 24, 24),
                      ),
                    ),
                    value: 'Deluxe rooms',
                    groupValue: selectedRoomType,
                    onChanged: (value) {
                      setState(() {
                        selectedRoomType = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      'Cabana',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 25, 24, 24),
                      ),
                    ),
                    value: 'Cabana',
                    groupValue: selectedRoomType,
                    onChanged: (value) {
                      setState(() {
                        selectedRoomType = value.toString();
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Purpose of Stay'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    roomBooked = true;
                  });
                },
                child: Text(
                  'Book your room',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 25, 24, 24),
                  ),
                ),
              ),
              SizedBox(height: 20),
              if (roomBooked)
                Text(
                  'Your room is booked successfully!!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.redAccent[400],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  String roomInteriorsRating = 'good';
  String roomMaintainRating = 'good';
  String roomFoodRating = 'good';
  String roomWifiRating = 'good'; // Default rating
  int starRating = 3; // Default star rating
  TextEditingController experienceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Give Feedback')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Give your valuable Feedback and Review',
                style: TextStyle(
                  fontSize: 24,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Rate us for the following services:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '1. Room interiors',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 'good',
                    groupValue: roomInteriorsRating,
                    onChanged: (value) {
                      setState(() {
                        roomInteriorsRating = value.toString();
                      });
                    },
                  ),
                  Text('Good'),
                  Radio(
                    value: 'average',
                    groupValue: roomInteriorsRating,
                    onChanged: (value) {
                      setState(() {
                        roomInteriorsRating = value.toString();
                      });
                    },
                  ),
                  Text('Average'),
                  Radio(
                    value: 'bad',
                    groupValue: roomInteriorsRating,
                    onChanged: (value) {
                      setState(() {
                        roomInteriorsRating = value.toString();
                      });
                    },
                  ),
                  Text('Bad'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                '2. Room Maintenance and Cleanliness',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 'good',
                    groupValue: roomMaintainRating,
                    onChanged: (value) {
                      setState(() {
                        roomMaintainRating = value.toString();
                      });
                    },
                  ),
                  Text('Good'),
                  Radio(
                    value: 'average',
                    groupValue: roomMaintainRating,
                    onChanged: (value) {
                      setState(() {
                        roomMaintainRating = value.toString();
                      });
                    },
                  ),
                  Text('Average'),
                  Radio(
                    value: 'bad',
                    groupValue: roomMaintainRating,
                    onChanged: (value) {
                      setState(() {
                        roomMaintainRating = value.toString();
                      });
                    },
                  ),
                  Text('Bad'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                '3. Food and Comfort',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 'good',
                    groupValue: roomFoodRating,
                    onChanged: (value) {
                      setState(() {
                        roomFoodRating = value.toString();
                      });
                    },
                  ),
                  Text('Good'),
                  Radio(
                    value: 'average',
                    groupValue: roomFoodRating,
                    onChanged: (value) {
                      setState(() {
                        roomFoodRating = value.toString();
                      });
                    },
                  ),
                  Text('Average'),
                  Radio(
                    value: 'bad',
                    groupValue: roomFoodRating,
                    onChanged: (value) {
                      setState(() {
                        roomFoodRating = value.toString();
                      });
                    },
                  ),
                  Text('Bad'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                '4. Internet and Wifi',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 'good',
                    groupValue: roomWifiRating,
                    onChanged: (value) {
                      setState(() {
                        roomWifiRating = value.toString();
                      });
                    },
                  ),
                  Text('Good'),
                  Radio(
                    value: 'average',
                    groupValue: roomWifiRating,
                    onChanged: (value) {
                      setState(() {
                        roomWifiRating = value.toString();
                      });
                    },
                  ),
                  Text('Average'),
                  Radio(
                    value: 'bad',
                    groupValue: roomWifiRating,
                    onChanged: (value) {
                      setState(() {
                        roomWifiRating = value.toString();
                      });
                    },
                  ),
                  Text('Bad'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Share your experience during your stay in our Hotel Oasis:',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                controller: experienceController,
                decoration: InputDecoration(
                  labelText: 'Your Experience',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Rate us:',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 1; i <= 5; i++)
                    IconButton(
                      icon: Icon(
                        i <= starRating ? Icons.star : Icons.star_border,
                        size: 40,
                      ),
                      onPressed: () {
                        setState(() {
                          starRating = i;
                        });
                      },
                    ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NextPage(),
                    ),
                  );
                },
                child: Text('Next'),
              ),
              // Add more rating sections for other services as needed
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Thank you')),
      body: DatePickerExample(),
    );
  }
}

class DatePickerExample extends StatefulWidget {
  @override
  _DatePickerExampleState createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime selectedDate = DateTime.now();
  DateTime selectedDate1 = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate1,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        selectedDate1 = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Your Duration of Stay in Our Hotel Oasis:',
            style: TextStyle(
              fontSize: 40,
              decoration: TextDecoration.underline,
              color: Colors.pink[300],
            ),
          ),
          SizedBox(height: 30),
          Text(
            "${selectedDate.toLocal()}".split(' ')[0],
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () => _selectDate(context),
            child: Text('Check in date'),
          ),
          SizedBox(height: 20),
          Text(
            "${selectedDate1.toLocal()}".split(' ')[0],
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            onPressed: () => _selectDate1(context),
            child: Text('Check out date'),
          ),
          SizedBox(height: 20),
          Text(
            'Thank You !!',
            style: TextStyle(
              fontSize: 34,
              decoration: TextDecoration.underline,
              color: Colors.amber[800],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Visit Again...',
            style: TextStyle(
              fontSize: 34,
              decoration: TextDecoration.underline,
              color: Colors.teal[700],
            ),
          ),
        ],
      ),
    );
  }
}
