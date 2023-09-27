import 'package:flutter/material.dart';

class LandingContainer extends StatelessWidget {
  const LandingContainer(this.startQuiz, {super.key});

  final void Function() startQuiz; //startquiz adalah tipe fungsi dart
  
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 104, 10, 121), //primary color
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //ada 2 jenis opacity bisa digunain
            //opacity cara salah
            // Opacity(
            //   opacity: 0.5,
            //   child: Image.asset(
            //     'assets/images/quiz-logo.png',
            //     width: 250,
            //   ),
            // ),

            //Gud Opacity
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
              color: const Color.fromARGB(150, 255, 255, 255), //inget RGB
            ),
            const Padding(
              padding: EdgeInsets.only(top: 80, bottom: 50),
              child: Text(
                'Learn Flutter the fun way!',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),

            //kita bisa nambah padding juga dengan SizedBox(height : 30), ni mirip kayak kotak kosong diantara button sama text

            // OutlinedButton(
            //     onPressed: () {
            //       print('click');
            //     },
            //     style: OutlinedButton.styleFrom(
            //       foregroundColor: Colors.white,
            //     ),
            //     child: const Text('Start Quiz'))

            OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt_rounded),
                label: const Text('Start Quiz'))

            // FilledButton(
            //     onPressed: () {},
            //     style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.black)),

            //     child: const Text('Start'))
          ],
        ),
      ),
    );
  }
}
