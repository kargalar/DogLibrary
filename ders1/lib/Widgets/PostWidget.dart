// ignore: file_names
import 'package:ders1/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:ders1/Models/Post.dart';
import 'package:ders1/pages/informationPage.dart';
import 'package:http/http.dart' as http;

class PostWidget extends StatefulWidget {
  // const PostWidget({super.key});

  final Dog post;

  const PostWidget({super.key, required this.post});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Hero(
              tag: widget.post.name,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        InformationPage(
                      post: widget.post,
                    ),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return SlideTransition(
                        position:
                            Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
                                .animate(animation),
                        child: child,
                      );
                    },
                  ),
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
            SizedBox(height: 10),
            Text(
              widget.post.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<List<Dog>> getPostsFromDatabase() async {
  final url =
      Uri.parse('https://egitim.azurewebsites.net/Dog/GetDogInformation');

  final response = await http.get(url);

  return dogFromJson(response.body);
}
