import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class DetailsOfResultsArgs extends StatelessWidget {
  String conclusion;
  String premises;
  String contextmena;
  String sentences;
  DetailsOfResultsArgs({
    required this.conclusion,
    required this.premises,
    required this.contextmena,
    required this.sentences,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 23, left: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        PhosphorIcons.caretLeft(PhosphorIconsStyle.regular),
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            Colors.purple.shade500,
                            Colors.pink,
                            // Colors.deepOrange.shade400,
                            Colors.blueAccent,
                            Colors.green.shade700
                          ],
                        ).createShader(bounds);
                      },
                      child: const Text(
                        "IR Searching",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                      backgroundImage: AssetImage("assets/avatar.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              detail(
                context: context,
                title: 'The Searching Result:',
                text: conclusion
                   .replaceAll(RegExp(r'\s+'), ' ')
                          .replaceAll("/", "")
                          .replaceAll("-", "\n")
                          .replaceAll(";", " ")
                          .replaceAll("[", "")
                          .replaceAll("]", "")
                          .replaceAll("{", "")
                          .replaceAll("}", "")
                          .replaceAll("(", "")
                          .replaceAll(")", "")
              ),
              premises.isNotEmpty
                  ? detail(
                      context: context,
                      title: 'The Premises:',
                      text: premises
                          .replaceAll(RegExp(r'\s+'), ' ')
                          .replaceAll("/", "")
                          .replaceAll("-", "\n")
                          .replaceAll(";", " ")
                          .replaceAll("[", "")
                          .replaceAll("]", "")
                          .replaceAll("{", "")
                          .replaceAll("}", "")
                          .replaceAll("(", "")
                          .replaceAll(")", "")
                    )
                  : Container(),
              contextmena.isNotEmpty
                  ? detail(
                      context: context,
                      title: 'The Context:',
                      text: contextmena
                         .replaceAll(RegExp(r'\s+'), ' ')
                          .replaceAll("/", "")
                          .replaceAll("-", "\n")
                          .replaceAll(";", " ")
                          .replaceAll("[", "")
                          .replaceAll("]", "")
                          .replaceAll("{", "")
                          .replaceAll("}", "")
                          .replaceAll("(", "")
                          .replaceAll(")", "")
                    )
                  : Container(),
              sentences.isNotEmpty
                  ? detail(
                      context: context,
                      title: 'The Sentences:',
                      text: sentences
                          .replaceAll(RegExp(r'\s+'), ' ')
                          .replaceAll("/", "")
                          .replaceAll("-", "\n")
                          .replaceAll(";", " ")
                          .replaceAll("[", "")
                          .replaceAll("]", "")
                          .replaceAll("{", "")
                          .replaceAll("}", "")
                          .replaceAll("(", "")
                          .replaceAll(")", "")
                          
                    )
                  : Container(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget detail({
    required BuildContext context,
    required String title,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade400,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              text,
              maxLines: 100,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
      ),
    );
  }
}
