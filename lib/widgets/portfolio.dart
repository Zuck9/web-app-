// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:testing/main.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uday Kiran\'s Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F9FC),
      ),debugShowCheckedModeBanner: false,
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(slivers: [
        const SliverAppBar(
          title: Text("Uday Kiran", style: TextStyle(letterSpacing: 3)),
          floating: true,
          centerTitle: true,
          titleSpacing: 3,
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const ReachMeOut(),
              const SizedBox(height: 16.0),
              buildProfile(height, width),
              const SizedBox(height: 16.0),
              const EducationCard(),
              const SizedBox(height: 16.0),
              const LinksCard(),
              const SizedBox(height: 16.0),
              CourseworkCard(),
              const SizedBox(height: 16.0),
              const SkillsCard(),
              const SizedBox(height: 16.0),
              ProjectsCard(),
              const SizedBox(height: 16.0),
              const ResearchCard(),
              const SizedBox(height: 16.0),
              const ExperienceCard(),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ]),
    );
  }
}

// make sure you not have Empty space before url
String linkedin = 'https://www.linkedin.com/in/uday-kiran-73a727233';
String github = 'https://github.com/Uday-kiran9147';
String twitter = 'https://twitter.com/Uday_krn';

Future<void> _launchUrl(String weblink) async {
  Uri url = Uri.parse(weblink);

  if (!await launchUrl(url, webOnlyWindowName: '_blank')) {
    throw Exception('Could not launch $url');
  }
}

class ReachMeOut extends StatelessWidget {
  const ReachMeOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            _launchUrl(github);
          },
          child: const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('assets/logos/GitHub.png'),
          ),
        ),
        GestureDetector(
          onTap: () {
            _launchUrl(linkedin);
          },
          child: const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('assets/logos/LinkedIn.png'),
          ),
        ),
        GestureDetector(
          onTap: () {
            _launchUrl(twitter);
          },
          child: const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(
              'assets/logos/GitHub.png',
            ),
          ),
        ),
      ],
    );
  }
}

class EducationCard extends StatelessWidget {
  const EducationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Card(
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'EDUCATION',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Column(
                children: [
                  TextContainer(
                      text: 'B. Tech - CSE (Computer Science and Engineering)\n'
                          'Indian Institute of Information Technology, Vadodara\n'
                          '2021 – 2025'),
                  SizedBox(height: 8.0),
                  TextContainer(
                    text: 'Fortune Butterfly Senior Secondary School\n'
                        'Aug 2019-2021 | Hyderabad\n'
                        'Mathematics, physical science.\n'
                        'Grade: 90%',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 10),
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }
}

class LinksCard extends StatelessWidget {
  const LinksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Card(
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'LINKS',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              ReachMeOut(),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> skills = [
  '• Problem-Solving ',
  '• Project Management ',
  '• Dart ',
  '• Flutter',
  '• Firebase ',
  '• Java',
  '• Python ',
  '• Node.js ',
  '• Data Structures',
  '• Algorithms',
  '• Time management',
  '• Android ',
  '• MySQL',
];

class CourseworkCard extends StatelessWidget {
  List<String> courses = [
    '• Oops',
    '• Data Structures & Algorithms',
    '• Database management system',
    '• Operating System',
    '• Open-source Software Engineering',
  ];

  CourseworkCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(elevation: 5,
        margin: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'COURSEWORK',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              BuildGrid(list: courses)
            ],
          ),
        ),
      ),
    );
  }
}

class BuildGrid extends StatelessWidget {
  const BuildGrid({
    super.key,
    required this.list,
  });

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 300 / 50,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            maxCrossAxisExtent: 300),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                "  ${list[index]}",
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.left,
              ));
        });
  }
}

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'SKILLS',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              BuildGrid(list: skills)
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectsCard extends StatelessWidget {
  List projects = [];

  ProjectsCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Card(
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'PROJECTS',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              ProjectItem(
                title: 'House-Rental System',
                description:
                    'The app typically has two types of users - renters and landlords. Renters can search for available properties, view photos and descriptions of the property, and contact the landlord to arrange a viewing or make a booking.',
                tools: 'Firebase, Cloud Firestore, Dart, Flutter',
              ),
              ProjectItem(
                title: 'Travel Application',
                description:
                    'Currently building a Travel application where people can share interesting things about different visited places.',
                tools: 'Dart, Flutter',
              ),
              ProjectItem(
                title: 'Meals Application',
                description:
                    'A platform that offers users a list of meals categorized by different criteria. Users can easily filter through the list to find the meal they desire and access the recipe to prepare.',
                tools: 'Dart, Flutter',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final String tools;

  const ProjectItem({
    super.key,
    required this.title,
    required this.description,
    required this.tools,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 10),
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(description),
            const SizedBox(height: 4.0),
            Text(
              'Tools: $tools',
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}

class ResearchCard extends StatelessWidget {
  const ResearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Card(
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'RESEARCH',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              TextContainer(
                text: 'Artificial Intelligence on social media | Researcher\n'
                    'July 10, 2022 | Gandhinagar, India\n'
                    '• Worked as a Team of 2 to Study AI on social media, a tool that learns from large-scale user preference feedback to plan Recommendations in human environments.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Card(
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'EXPERIENCE',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              TextContainer(
                text: 'Google Developer Students Club | Flutter-Dart\n'
                    'Aug 2023 - Present | Gandhinagar, India\n'
                    '• Flutter Lead Developer at IIIT, Vadodara.',
              ),
              SizedBox(height: 8.0),
              Text(
                "COURSERA",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              TextContainer(
                text: 'June 2022 – Dec 2022\n'
                    '• Introduction to Python programming\n'
                    '• Algorithmic toolbox by the University of California San Diego',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
