import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class DetailsOfResultsClinical extends StatefulWidget {
  String title;
  String condition;
  String summary;
  String detailedDescription;
  String eligibility;
  DetailsOfResultsClinical({
    required this.title,
    required this.condition,
    required this.summary,
    required this.detailedDescription,
    required this.eligibility,
    super.key,
  });

  @override
  State<DetailsOfResultsClinical> createState() =>
      _DetailsOfResultsClinicalState();
}

class _DetailsOfResultsClinicalState extends State<DetailsOfResultsClinical> {
  bool like = false;

  bool dislike = false;

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
                text: widget.title,
              ),
              detail(
                context: context,
                title: 'The Condition:',
                text: widget.condition,
              ),
              detail(
                context: context,
                title: 'The Summary:',
                text: widget.summary,
              ),
              detail(
                context: context,
                title: 'The Detailed Description:',
                text: widget.detailedDescription,
              ),
              detail(
                context: context,
                title: 'The Eligibility:',
                text: widget.eligibility,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    Text(
                      "was the Result helpful?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade200,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          like = !like;
                        });
                      },
                      child: Icon(
                        like
                            ? PhosphorIcons.thumbsUp(PhosphorIconsStyle.fill)
                            : PhosphorIcons.thumbsUp(
                                PhosphorIconsStyle.regular),
                        size: 30,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          dislike = !dislike;
                        });
                      },
                      child: Icon(
                        dislike
                            ? PhosphorIcons.thumbsDown(PhosphorIconsStyle.fill)
                            : PhosphorIcons.thumbsDown(
                                PhosphorIconsStyle.regular),
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Version 1.1.0',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
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
              maxLines: 10,
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
