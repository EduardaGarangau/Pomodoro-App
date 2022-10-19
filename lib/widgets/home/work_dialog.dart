import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class WorkDialog extends StatelessWidget {
  const WorkDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 0), () async {
        final cache = AudioCache(prefix: '/assets');
        final url = await cache.load('sound_alarm.wav');
        await player.play(UrlSource(url.path));
        print(player.state);

        showDialog(
          context: context,
          builder: (context) => Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.all(10),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 400,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(192, 34, 67, 1),
                  ),
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      const Text(
                        "WORK TIME OVER!!!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "Congratulations, you made it! You deserve a break 🥳",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Nunito',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 35),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          child: const Text(
                            "CLOSE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Nunito',
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () async {
                            Navigator.of(context).pop();
                            await player.stop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -65,
                  child: Image.asset(
                    'lib/assets/images/alarm.gif',
                    width: 150,
                    height: 150,
                  ),
                )
              ],
            ),
          ),
        );
      }),
      builder: (context, _) => const SizedBox(),
    );
  }
}
