import 'package:flutter/material.dart';
import 'package:ders1/Widgets/PostWidget.dart';
import 'package:ders1/Models/Post.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 147, 7),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Köpek Kütüphanesi',
          style: TextStyle(
              color: Color.fromARGB(255, 255, 147, 7),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: 5, vertical: 15), //yanlar ve üstler genel
          child: FutureBuilder(
            future: getPostsFromDatabase(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return MasonryGridView.builder(
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) => PostWidget(
                    post: snapshot.data![index],
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
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
