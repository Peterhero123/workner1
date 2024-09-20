import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Japan NurseryApp Kitsadin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool shadowColor = false;
  double? scrolledUnderElevation;

  final List<Map<String, String>> students = [
    {
      'name': 'ณัฐวุฒิ',
      'surname': 'สมศรี',
      'imageUrl':
          'https://img.freepik.com/premium-photo/happy-smiling-boy-preparing-school_127093-2809.jpg'
    },
    {
      'name': 'กานต์',
      'surname': 'ภักดี',
      'imageUrl':
          'https://img.freepik.com/premium-photo/happy-smiling-girl-preparing-school_127093-2810.jpg'
    },
    {
      'name': 'พงศกร',
      'surname': 'ใจดี',
      'imageUrl':
          'https://img.freepik.com/premium-photo/happy-smiling-boy-studying-school_127093-2811.jpg'
    },
    {
      'name': 'ศิริพร',
      'surname': 'ชื่นบาน',
      'imageUrl':
          'https://img.freepik.com/premium-photo/happy-smiling-girl-reading-book_127093-2812.jpg'
    },
    {
      'name': 'ธนาวุฒิ',
      'surname': 'แซ่หลี',
      'imageUrl':
          'https://img.freepik.com/premium-photo/smiling-boy-raising-hand-class_127093-2813.jpg'
    },
    {
      'name': 'อาทิตยา',
      'surname': 'สุขใจ',
      'imageUrl':
          'https://img.freepik.com/premium-photo/girl-holding-books-smiling_127093-2814.jpg'
    },
    {
      'name': 'กิตติพงษ์',
      'surname': 'รุ่งเรือง',
      'imageUrl':
          'https://img.freepik.com/premium-photo/smiling-boy-carrying-backpack_127093-2815.jpg'
    },
    {
      'name': 'สุพัตรา',
      'surname': 'มีสุข',
      'imageUrl':
          'https://img.freepik.com/premium-photo/girl-smiling-with-books_127093-2816.jpg'
    },
    {
      'name': 'อัครพล',
      'surname': 'สุขุม',
      'imageUrl':
          'https://img.freepik.com/premium-photo/boy-with-glasses-smiling_127093-2817.jpg'
    },
    {
      'name': 'ภัทร์',
      'surname': 'รุ่งโรจน์',
      'imageUrl':
          'https://img.freepik.com/premium-photo/boy-laughing-holding-book_127093-2818.jpg'
    },
    {
      'name': 'นันทนา',
      'surname': 'สุขสันต์',
      'imageUrl':
          'https://img.freepik.com/premium-photo/smiling-girl-holding-pencil_127093-2819.jpg'
    },
    {
      'name': 'กมล',
      'surname': 'ดีใจ',
      'imageUrl':
          'https://img.freepik.com/premium-photo/happy-boy-writing-book_127093-2820.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Japan NurseryApp Kitsadin"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add functionality for the notifications button here
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              // Add functionality for the next button here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            mainAxisSpacing: 10.0, // Spacing between rows
            crossAxisSpacing: 10.0, // Spacing between columns
            childAspectRatio: 1.0, // Adjust aspect ratio for item size
          ),
          itemCount: students.length, // Number of items in the grid
          itemBuilder: (context, index) {
            final student = students[index];
            int baseTel = 993243420; // Corrected phone number base
            return Card(
              elevation: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    student['imageUrl']!, // URL ของรูปภาพที่แตกต่างกัน
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(height: 1),
                  Text('นักเรียน ${index + 1}'),
                  Text('${student['name']} ${student['surname']}'),
                  Text('0${baseTel + index + 1}') // Incremented phone number
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    shadowColor = !shadowColor;
                  });
                },
                icon:
                    Icon(shadowColor ? Icons.visibility_off : Icons.visibility),
                label: const Text("shadow color"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
