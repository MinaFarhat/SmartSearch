import 'package:flutter/material.dart';
import 'package:ir/Args/Presentation/detailofresultargs.dart';

// ignore: must_be_immutable
class TextResultArgs extends StatelessWidget {
  String conclusion;
  String premises;
  String contextmena;
  String sentences;

  TextResultArgs({
    required this.conclusion,
    required this.premises,
    required this.contextmena,
    required this.sentences,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return DetailsOfResultsArgs(
              conclusion: conclusion,
              contextmena: contextmena,
              premises: premises,
              sentences: sentences,
            );
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 27,
                  backgroundImage: AssetImage("assets/avatar.png"),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.72,
                  child: Text(
                    conclusion
                        .replaceAll(RegExp(r'\s+'), ' ')
                        .replaceAll("/", "")
                        .replaceAll("-", "\n")
                        .replaceAll(";", " ")
                        .replaceAll("[", "")
                        .replaceAll("]", "")
                        .replaceAll("{", "")
                        .replaceAll("}", "")
                        .replaceAll("(", "")
                        .replaceAll(")", ""),
                        
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent.shade100,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0005,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Text(
                premises
                    .replaceAll(RegExp(r'\s+'), ' ')
                    .replaceAll("/", "")
                    .replaceAll("-", "\n")
                    .replaceAll(";", " ")
                    .replaceAll("[", "")
                    .replaceAll("]", "")
                    .replaceAll("{", "")
                    .replaceAll("}", "")
                    .replaceAll("(", "")
                    .replaceAll(")", ""),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
