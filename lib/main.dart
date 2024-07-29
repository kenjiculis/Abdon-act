import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfileApp(),
    );
  }
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Profile',
              style: TextStyle(
                fontFamily: 'Playfair',
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 93, 94, 98),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return TabBarView(
              children: [
                PersonalInformationTab(),
                EducationalBackgroundTab(),
                SkillsTab(),
                InterestsTab(),
                ContactDetailsTab(),
              ],
            );
          },
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'Personal Info'),
              Tab(icon: Icon(Icons.school), text: 'Education'),
              Tab(icon: Icon(Icons.build), text: 'Skills'),
              Tab(icon: Icon(Icons.star), text: 'Interests'),
              Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
            ],
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

// Personal Information

class PersonalInformationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).orientation == Orientation.portrait ? 40 : 70,
                    backgroundImage: AssetImage('assets/pic1.jpg'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'KENDRICK DE LEON ABDON',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontFamily: 'DancingScript',
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.grey),
                  SizedBox(height: 10),
                  Text(
                    'BS Information Technology',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Service Management',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'AGE: 21',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Code. Create. Innovate',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Educational Background

class EducationalBackgroundTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Educational Background',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              _buildEducationCard(
                'Tertiary',
                'Batangas State University',
                '2021-present',
                Icons.school,
              ),
              _buildEducationCard(
                'Secondary',
                'Puerto Galera National Highscholl ',
                '2020-2021',
                Icons.school,
              ),
              _buildEducationCard(
                'Elementary',
                'Isidoro Suzara Memorial School ',
                '2014-2015',
                Icons.school,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEducationCard(String level, String institution, String duration, IconData iconData) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(iconData, size: 20, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  level,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              institution,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              duration,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

// SkillsTab

class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Skills',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.code),
                        title: Text(
                          'Technical Skills',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Programming Languages: Java, Python, Dart',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Web Development: HTML, CSS, JavaScript',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Mobile Development: Flutter, Android Studio',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.group),
                        title: Text(
                          'Non-Technical Skills',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Problem Solving',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Teamwork',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// InterestTab

class InterestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interests'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildInterestCard(Icons.web, 'Web Development', 'Web development involves creating websites and web applications.'),
              _buildInterestCard(Icons.desktop_windows, 'Software Development', 'Software development focuses on creating applications and software systems.'),
              _buildInterestCard(Icons.storage, 'Database Management', 'Database management involves handling and optimizing databases.'),
              _buildInterestCard(Icons.computer, 'Applied Technology', 'Applied technology applies scientific knowledge to practical problems.'),
              _buildInterestCard(Icons.devices_other, 'Hardware', 'Hardware refers to the physical components of a computer system.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInterestCard(IconData icon, String title, String description) {
    return Card(
      elevation: 10.0,
      child: ExpansionTile(
        leading: Icon(icon, size: 32.0),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

// ContactDetails

class ContactDetailsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Details',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.email, size: 20),
                      SizedBox(width: 10),
                      Text(
                        '21-00952@g.batstate-u.edu.ph',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.phone, size: 20),
                      SizedBox(width: 10),
                      Text(
                        '+63 9383491279',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 20),
                      SizedBox(width: 10),
                      Text(
                        'Dulangan, Puerto Galera, Oriental Mindoro',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
