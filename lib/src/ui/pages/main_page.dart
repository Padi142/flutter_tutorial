import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../widgets/app_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    // BlocProvider.of<flutter_tutorialBloc>(context).add(const CreateGame());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'hello_text_label'.tr(),
            style: const TextStyle(color: Colors.black, fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: 80,
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: AppButton(
                      onClick: () {
                        setState(() {
                          context.setLocale(Locale('en'));
                        });
                      },
                      backgroundColor: Colors.white,
                      radius: 8,
                      text: "en",
                      textStyle: const TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: 80,
                  height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: AppButton(
                      onClick: () {
                        setState(() {
                          context.setLocale(Locale('cs'));
                        });
                      },
                      backgroundColor: Colors.white,
                      radius: 8,
                      text: "cs",
                      textStyle: const TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    )));
  }
}

// Widget mainBody(BuildContext context, Game game) {
//   return Scaffold(
//     floatingActionButton: FloatingActionButton(onPressed: () {
//       BlocProvider.of<GuessBloc>(context).add(LoadGuesses(context, game));
//     }),
//     body: Flex(
//         direction: Axis.vertical,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 150,
//                 child: ListView.builder(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     itemCount: game.wordToDisplay.length,
//                     itemBuilder: (_, index) {
//                       return LetterContainer(
//                         letter: game.wordToDisplay[index],
//                         isGuessed: false,
//                       );
//                     }),
//               ),
//             ],
//           )
//         ]),
//   );
// }
// }
