import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter SVG"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Load SVG File from Assets"),
            const Divider(),
            Expanded(child: SvgPicture.asset('assets/contact-us.svg')),
            const Text("Load SVG File from Network"),
            const Divider(),
            Expanded(
              child: SvgPicture.network(
                'https://firebasestorage.googleapis.com/v0/b/bloc-photo-library-example.appspot.com/o/Tutorial-video.svg?alt=media&token=02577a52-6e07-49cc-b6c4-f06e38beff53',
                // URl of SVG File
                placeholderBuilder: (BuildContext context) => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
