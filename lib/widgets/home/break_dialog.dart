import 'package:flutter/material.dart';

class BreakDialog extends StatelessWidget {
  const BreakDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 0), () {
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
                    color: Colors.green,
                  ),
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      const Text(
                        "BREAK TIME OVER!!!",
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
                        "Time to get back to work, you can do this 😎",
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
                          onPressed: () {
                            Navigator.of(context).pop();
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
