import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TMDB List')),
      body: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            clipBehavior: Clip.antiAlias,
            elevation: 50,
            child: SizedBox(
              height: 180,
              width: 120,
              child: Image.network(
                  'https://media.themoviedb.org/t/p/w440_and_h660_face/tmSSRUsdWTKvYaJTlq2gufLCxsW.jpg'),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            width: 120,
            child: Text(
              'Seinfield',
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.amber,
                ),
                Text(' 7/10'),
                SizedBox(
                  width: 8,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
