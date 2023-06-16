import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:styled_text/styled_text.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(ResumeApp());
}

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue[800],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: AvatarGlow(
                        glowColor: Colors.white,
                        endRadius: 70.0,
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage('asset/image.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Ilavarasan S',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Software Developer',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ContactInfo(
                      icon: Icons.phone,
                      text: '+91 9080494637',
                    ),
                    ContactInfo(
                      icon: Icons.mail,
                      text: 'sempiternal.eph@gmail.com',
                    ),
                    ContactInfo(
                      icon: Icons.link,
                      text: 'johndoeportfolio.com',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledText(
                        text: '<h1>About Me</h1>',
                        tags: {
                          'h1': StyledTextTag(
                            style: GoogleFonts.playfairDisplay(
                              textStyle: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        },
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'I am a passionate software developer with a strong foundation in Flutter, '
                        'Redis, Linux, Firebase, and Python/C++. Currently pursuing a B.E. in '
                        'Computer Science Engineering at Dr. N.G.P. Institute of Technology.',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      StyledText(
                        text: '<h1>Education</h1>',
                        tags: {
                          'h1': StyledTextTag(
                            style: GoogleFonts.playfairDisplay(
                              textStyle: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        },
                      ),
                      const SizedBox(height: 10.0),
                      TimelineTile(
                        alignment: TimelineAlign.start,
                        indicatorStyle: IndicatorStyle(
                          width: 40.0,
                          color: Colors.blue,
                          padding: const EdgeInsets.all(8.0),
                          iconStyle: IconStyle(
                            color: Colors.white,
                            iconData: Icons.school,
                          ),
                        ),
                        beforeLineStyle: const LineStyle(color: Colors.blue),
                        endChild: Container(
                          padding: const EdgeInsets.only(left: 16.0),
                          constraints: const BoxConstraints(minHeight: 100.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bachelor of Engineering in Computer Science',
                                style: GoogleFonts.openSans(
                                  textStyle: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              const Text(
                                'Dr. N.G.P. Institute of Technology',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              const Text(
                                '2021 - Present',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              const Text(
                                'Relevant coursework: Data Structures, Algorithms, '
                                'Object-Oriented Programming, Database Management Systems, etc.',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      StyledText(
                        text: '<h1>Skills</h1>',
                        tags: {
                          'h1': StyledTextTag(
                            style: GoogleFonts.playfairDisplay(
                              textStyle: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        },
                      ),
                      const SizedBox(height: 10.0),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 4.0,
                        children: [
                          SkillChip(label: 'Flutter'),
                          SkillChip(label: 'Redis'),
                          SkillChip(label: 'Linux'),
                          SkillChip(label: 'Firebase'),
                          SkillChip(label: 'Python'),
                          SkillChip(label: 'C++'),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      StyledText(
                        text: '<h1>Projects</h1>',
                        tags: {
                          'h1': StyledTextTag(
                            style: GoogleFonts.playfairDisplay(
                              textStyle: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        },
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '1. Project Prism - A project focused on developing Mobile application for '
                        'college usage, providing convenient feature and information within your hands anywhere anytime',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      const Text(
                        '2. Project Redis Cache Implementation - Developed a caching system '
                        'using Redis to improve the performance of a web application.',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      StyledText(
                        text: '<h1>Certification</h1>',
                        tags: {
                          'h1': StyledTextTag(
                            style: GoogleFonts.playfairDisplay(
                              textStyle: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        },
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '1. Infosys Springboard - Data structure and database management using Java & MySQL',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      const Text(
                        '2. Placeholder for now',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactInfo({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 16.0,
            ),
            const SizedBox(width: 10.0),
            Text(
              text,
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.blue[800],
    );
  }
}
