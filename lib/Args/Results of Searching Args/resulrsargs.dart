import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ir/Args/Results%20of%20Searching%20Args/cubit/cubit/resultsofsearchingargscubit_cubit.dart';
import 'package:ir/Args/Results%20of%20Searching%20Args/textrsultargs.dart';
import 'package:ir/Clinical%20Trials/cubit/cubit/resultsofsearchingclinicalcubit_cubit.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class ResultsArgs extends StatelessWidget {
  ResultsArgs({
    required this.searchingtext,
    required this.onBack,
    super.key,
  });
  String searchingtext;
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
              BlocBuilder<ResultsofsearchingargscubitCubit,
                  ResultsofsearchingargscubitState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (resultsofsearchingentity) => SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: resultsofsearchingentity
                            .results.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return TextResultArgs(
                            title: resultsofsearchingentity
                                .results[index].title,
                            summary: resultsofsearchingentity
                                .results[index].summary,
                            condition: resultsofsearchingentity
                                .results[index].condition,
                            detailedDescription:
                                resultsofsearchingentity
                                    .results[index].detailedDescription,
                            eligibility: resultsofsearchingentity
                                .results[index].eligibility,
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
