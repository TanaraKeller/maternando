import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../resume/livro1.dart';
import '../resume/livro2.dart';
import '../resume/livro3.dart';
import '../resume/livro4.dart';
import '../resume/livro5.dart';
import '../resume/livro6.dart';
import '../resume/livro7.dart';
import '../resume/livro8.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 15),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 300,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black54,
                        image: const DecorationImage(
                          image: AssetImage('assets/livro1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) =>  const Livro1(),
                          );
                        },
                        icon: const Icon(Icons.add_circle,
                            color: Colors.pink, size: 20),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 300,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black54,
                        image: const DecorationImage(
                          image: AssetImage('assets/livro2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) => const Livro2(),
                          );
                        },
                        icon: const Icon(Icons.add_circle, color: Colors.pink, size: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 300,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black54,
                        image: const DecorationImage(
                          image: AssetImage('assets/livro3.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) => const Livro3(),
                          );
                        },
                        icon: const Icon(Icons.add_circle, color: Colors.pink, size: 20),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 300,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black54,
                        image: const DecorationImage(
                          image: AssetImage('assets/livro4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) => const Livro4(),
                          );
                        },
                        icon: const Icon(Icons.add_circle, color: Colors.pink, size: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 300,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black54,
                        image: const DecorationImage(
                          image: AssetImage('assets/livro5.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) => const Livro5(),
                          );
                        },
                        icon: const Icon(Icons.add_circle, color: Colors.pink, size: 20),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 300,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black54,
                        image: const DecorationImage(
                          image: AssetImage('assets/livro6.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) => const Livro6(),
                          );
                        },
                        icon: const Icon(Icons.add_circle, color: Colors.pink, size: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 300,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black54,
                        image: const DecorationImage(
                          image: AssetImage('assets/livro7.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) => const Livro7(),
                          );
                        },
                        icon: const Icon(Icons.add_circle,
                            color: Colors.pink,
                            size: 20),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 300,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black54,
                        image: const DecorationImage(
                          image: AssetImage('assets/livro8.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) => const Livro8(),
                          );
                        },
                        icon: const Icon(Icons.add_circle, color: Colors.pink, size: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
