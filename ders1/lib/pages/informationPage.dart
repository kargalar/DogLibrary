import 'package:ders1/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:ders1/Models/Post.dart';

class InformationPage extends StatefulWidget {
  final Dog post;

  const InformationPage({super.key, required this.post});
  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 147, 7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Hero(
                    tag: widget.post.name,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                HomePage(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                        begin: Offset(1, 0), end: Offset.zero)
                                    .animate(animation),
                                child: child,
                              );
                            }),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          widget.post.imageLink,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.post.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w700,
                      // fontSize: 20,
                    ),
                  ),
                  Container(
                    height: 5,
                    color: Color.fromARGB(255, 255, 147, 7),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Çocuklarla İletişim:',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            5, // Generate 5 icons in total
                            (index) => Icon(
                                  Icons.pets,
                                  color: index <
                                          widget.post
                                              .goodWithChildren // If the index is less than the widget.post.goodWithChildren value, use a filled icon
                                      ? Color.fromARGB(
                                          255, 255, 147, 7) // Filled icon color
                                      : Color.fromARGB(
                                          122, 255, 147, 7), // Empty icon color
                                )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Diğer Köpeklerle İletişim:',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.pets,
                                  color: index <
                                          widget.post
                                              .goodWithOtherDogs // If the index is less than the widget.post.goodWithChildren value, use a filled icon
                                      ? Color.fromARGB(
                                          255, 255, 147, 7) // Filled icon color
                                      : Color.fromARGB(
                                          122, 255, 147, 7), // Empty icon color
                                )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yabancılarla İletişim:',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            5, // Generate 5 icons in total
                            (index) => Icon(
                                  Icons.pets,
                                  color: index <
                                          widget.post
                                              .goodWithStrangers // If the index is less than the widget.post.goodWithChildren value, use a filled icon
                                      ? Color.fromARGB(
                                          255, 255, 147, 7) // Filled icon color
                                      : Color.fromARGB(
                                          122, 255, 147, 7), // Empty icon color
                                )),
                      ),
                    ],
                  ),
                  Container(
                    height: 5,
                    color: Color.fromARGB(255, 255, 147, 7),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tüy Uzunluğu:',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            5, // Generate 5 icons in total
                            (index) => Icon(
                                  Icons.pets,
                                  color: index <
                                          widget.post
                                              .coatLength // If the index is less than the widget.post.goodWithChildren value, use a filled icon
                                      ? Color.fromARGB(
                                          255, 255, 147, 7) // Filled icon color
                                      : Color.fromARGB(
                                          122, 255, 147, 7), // Empty icon color
                                )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tüy Dökme:',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            5, // Generate 5 icons in total
                            (index) => Icon(
                                  Icons.pets,
                                  color: index <
                                          widget.post
                                              .shedding // If the index is less than the widget.post.goodWithChildren value, use a filled icon
                                      ? Color.fromARGB(
                                          255, 255, 147, 7) // Filled icon color
                                      : Color.fromARGB(
                                          122, 255, 147, 7), // Empty icon color
                                )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tüy Bakımı:',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            5, // Generate 5 icons in total
                            (index) => Icon(
                                  Icons.pets,
                                  color: index <
                                          widget.post
                                              .drooling // If the index is less than the widget.post.goodWithChildren value, use a filled icon
                                      ? Color.fromARGB(
                                          255, 255, 147, 7) // Filled icon color
                                      : Color.fromARGB(
                                          122, 255, 147, 7), // Empty icon color
                                )),
                      ),
                    ],
                  ),
                  // Container(
                  //   height: 2,
                  //   color: Color.fromARGB(255, 255, 147, 7),
                  //   margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
