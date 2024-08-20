import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(ProfessionalProfileApp());
}

class ProfessionalProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.indigo, // Primary color
          secondary: Colors.deepOrange, // Accent color (now called secondary)
        ),
        scaffoldBackgroundColor: Colors.grey[200],
        textTheme: TextTheme(
          headlineSmall: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.indigo),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.black87),
          bodySmall: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ),
      home: ProfileHomePage(),
    );
  }
}

class ProfileHomePage extends StatefulWidget {
  @override
  _ProfileHomePageState createState() => _ProfileHomePageState();
}

class _ProfileHomePageState extends State<ProfileHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _sections = [
    WhoAmISection(),
    SkillsSection(),
    ProjectsSection(),
    ContactSection(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onItemTapped,
            labelType: NavigationRailLabelType.all,
            leading: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profile_picture.jpg'),
              ),
            ),
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('Who am I?'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.code),
                label: Text('Skills'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.work),
                label: Text('Projects'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.contact_mail),
                label: Text('Contact'),
              ),
            ],
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _sections[_selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}

class WhoAmISection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Who am I?', style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 16),
          Text(
            'I am Aaron Ginder, a software engineer with a passion for building impactful digital experiences. '
            'With a strong background in Flutter development, I specialize in creating cross-platform applications '
            'that are both efficient and user-friendly.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Skills & Technologies',
              style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 16),
          Text(
            '- Flutter & Dart\n'
            '- Web Development (HTML, CSS, JavaScript)\n'
            '- Backend (Node.js, Python, Firebase)\n'
            '- Mobile Development (iOS, Android)\n'
            '- UI/UX Design',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class ProjectsSection extends StatefulWidget {
  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  String _selectedLanguage = 'All';
  String _selectedTechnology = 'All';

  final List<Project> _projects = [
    Project(
      title: 'Project One',
      description: 'A cross-platform mobile app built with Flutter.',
      imageUrl: 'assets/project_one.jpg',
      link: 'https://example.com/project-one',
      language: 'Dart',
      technology: 'Flutter',
    ),
    Project(
      title: 'Project Two',
      description: 'A dynamic web application using React and Node.js.',
      imageUrl: 'assets/project_two.jpg',
      link: 'https://example.com/project-two',
      language: 'JavaScript',
      technology: 'React',
    ),
    Project(
      title: 'Project Three',
      description: 'A machine learning model to predict stock prices.',
      imageUrl: 'assets/project_three.jpg',
      link: 'https://example.com/project-three',
      language: 'Python',
      technology: 'Machine Learning',
    ),
  ];

  List<Project> get _filteredProjects {
    return _projects.where((project) {
      final matchesLanguage =
          _selectedLanguage == 'All' || project.language == _selectedLanguage;
      final matchesTechnology = _selectedTechnology == 'All' ||
          project.technology == _selectedTechnology;
      return matchesLanguage && matchesTechnology;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: DropdownButton<String>(
                  value: _selectedLanguage,
                  items: <String>['All', 'Dart', 'JavaScript', 'Python']
                      .map((language) => DropdownMenuItem<String>(
                            value: language,
                            child: Text(language),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  hint: Text('Select Language'),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: DropdownButton<String>(
                  value: _selectedTechnology,
                  items: <String>['All', 'Flutter', 'React', 'Machine Learning']
                      .map((technology) => DropdownMenuItem<String>(
                            value: technology,
                            child: Text(technology),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedTechnology = value!;
                    });
                  },
                  hint: Text('Select Technology'),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.75, // Adjust to fit your card aspect ratio
              ),
              itemCount: _filteredProjects.length,
              itemBuilder: (context, index) {
                final project = _filteredProjects[index];
                return ProjectCard(
                  title: project.title,
                  description: project.description,
                  imageUrl: project.imageUrl,
                  link: project.link,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String link;
  final String language;
  final String technology;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.link,
    required this.language,
    required this.technology,
  });
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String link;

  ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => _launchURL(link),
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imageUrl,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Me', style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 16),
          Text(
            'Email: aaronginder@example.com\n'
            'Phone: +1234567890\n'
            'Location: City, Country',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
