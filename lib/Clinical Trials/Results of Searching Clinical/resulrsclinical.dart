import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ir/Clinical%20Trials/cubit/cubit/resultsofsearchingclinicalcubit_cubit.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'textrsultclinical.dart';

// ignore: must_be_immutable
class ResultsClinical extends StatelessWidget {
  const ResultsClinical({
    required this.searchingtext,
    required this.onBack,
    super.key,
  });
  final String searchingtext;
  final VoidCallback onBack;

  // List<Map<String, dynamic>> results = [
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary':
  //         'dhjqjdhlkqldklqkjdjhlkjhlashlhlahljvljaljhvjhdaljhvlkhadlhvlhlhljvhljhsljhvdjhalvjlakvlkdhslkvhhvlahdlkjvl',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'dhjqjdhlkqldklqkjdj',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'kjbkjhkjgkjvgfdrdrdgjvhbvj',
  //   },
  //   {
  //     'title': 'Affects of letrozole on pregnant women',
  //     'condition': 'jdwqhjhdlqhlkdlqkd',
  //     'summary': 'Mina Farhat',
  //     'detailed_description': 'jkjhqkjhdlqhljkokpdq',
  //     'eligibility': 'Mina Farhat',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: GestureDetector(
                        onTap: () {
                          onBack();
                          Navigator.pop(context);
                          FocusScope.of(context).unfocus();
                        },
                        child: Icon(
                          PhosphorIcons.caretLeft(PhosphorIconsStyle.regular),
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.16,
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            Colors.purple.shade500,
                            Colors.pink,
                            //Colors.deepOrange.shade400,
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
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Text(
                        "showing the results about '$searchingtext'",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.013,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              BlocBuilder<ResultsofsearchingclinicalcubitCubit,
                  ResultsofsearchingclinicalcubitState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (resultsofsearchingclinicalentity) => SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: resultsofsearchingclinicalentity
                            .resultsClinical.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return TextResultClinical(
                            title: resultsofsearchingclinicalentity
                                .resultsClinical[index].title,
                            summary: resultsofsearchingclinicalentity
                                .resultsClinical[index].summary,
                            condition: resultsofsearchingclinicalentity
                                .resultsClinical[index].condition,
                            detailedDescription:
                                resultsofsearchingclinicalentity
                                    .resultsClinical[index].detailedDescription,
                            eligibility: resultsofsearchingclinicalentity
                                .resultsClinical[index].eligibility,
                          );
                        },
                      ),
                    ),
                    loading: () => const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                    error: (networkExceptions) => const SizedBox(),
                    orElse: () => GestureDetector(
                      onTap: () {
                        context
                            .read<ResultsofsearchingclinicalcubitCubit>()
                            .emitresultsofsearchingclinical(
                              searchtext: searchingtext,
                            );
                      },
                      child: const Text(
                        "Reload",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
