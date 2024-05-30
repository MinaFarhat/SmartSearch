import 'package:flutter/material.dart';
import 'package:ir/Clinical%20Trials/Results%20of%20Searching%20Clinical/detailofresultclinical.dart';

// ignore: must_be_immutable
class TextResultClinical extends StatelessWidget {
  String title;
  String summary;
  String condition;
  String detailedDescription;
  String eligibility;
  TextResultClinical({
    required this.title,
    required this.summary,
    required this.condition,
    required this.detailedDescription,
    required this.eligibility,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
         Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return DetailsOfResultsClinical(
              title: title,
              condition: condition,
              summary: summary,
              detailedDescription: detailedDescription,
              eligibility: eligibility,
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
                    title,
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
                summary,
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
