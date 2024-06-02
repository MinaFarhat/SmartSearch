import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ir/Args/Presentation/resulrsargs.dart';
import 'package:ir/Args/cubit/cubit/resultsofsearchingargscubit_cubit.dart';
import 'package:ir/Core/error/network_exceptions.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class SearchFieldArgs extends StatelessWidget {
  final String datasetname;
  SearchFieldArgs({required this.datasetname, super.key});

  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 23, left: 23),
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
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                      backgroundImage: AssetImage("assets/avatar.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Center(
                child: Column(
                  children: [
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    const Text(
                      "Search about Online Args",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.035,
                    ),
                    BlocConsumer<ResultsofsearchingargscubitCubit,
                        ResultsofsearchingargscubitState>(
                      listener: (context, state) => state.whenOrNull(
                        error: (NetworkExceptions networkExceptions) =>
                            Fluttertoast.showToast(
                          msg: NetworkExceptions.getErrorMessage(
                            networkExceptions,
                          ), // Customize this message based on your error types
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,

                          backgroundColor: Colors.red,
                        ),
                        // ignore: body_might_complete_normally_nullable
                        success: (resultsofsearchingentity) {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return ResultsArgs(
                                resultsofsearchingentity:
                                    resultsofsearchingentity,
                                searchingtext: controller.text,
                                onBack: () {
                                  controller.clear();
                                  FocusScope.of(context).unfocus();
                                },
                              );
                            }),
                          );
                        },
                      ),
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return Form(
                              key: _formKey,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  keyboardAppearance: Brightness.dark,
                                  controller: controller,
                                  focusNode: focusNode,
                                  textInputAction: TextInputAction.search,
                                  onEditingComplete: () {
                                    if (_formKey.currentState?.validate() ??
                                        false) {
                                      context
                                          .read<
                                              ResultsofsearchingargscubitCubit>()
                                          .emitResultsofsearchingargs(
                                            searchtext: controller.text,
                                            datasetname: datasetname,
                                          );
                                    }
                                  },
                                  cursorColor: Colors.blueAccent,
                                  cursorRadius: const Radius.circular(50),
                                  decoration: InputDecoration(
                                    prefixIcon: PhosphorIcon(
                                      PhosphorIcons.magnifyingGlass(
                                        PhosphorIconsStyle.regular,
                                      ),
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    hintText: "Enter your text here",
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                        width: 1.2,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                        width: 1.2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Color(0xFF448AFF),
                                        width: 1.2,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 1.2,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 1.2,
                                      ),
                                    ),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            );
                          },
                          initial: () => Form(
                            key: _formKey,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                keyboardAppearance: Brightness.dark,
                                controller: controller,
                                focusNode: focusNode,
                                textInputAction: TextInputAction.search,
                                onEditingComplete: () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    context
                                        .read<
                                            ResultsofsearchingargscubitCubit>()
                                        .emitResultsofsearchingargs(
                                          searchtext: controller.text,
                                          datasetname: datasetname,
                                        );
                                  }
                                },
                                cursorColor: Colors.blueAccent,
                                cursorRadius: const Radius.circular(50),
                                decoration: InputDecoration(
                                  prefixIcon: PhosphorIcon(
                                    PhosphorIcons.magnifyingGlass(
                                      PhosphorIconsStyle.regular,
                                    ),
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  hintText: "Enter your text here",
                                  hintStyle: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1.2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1.2,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF448AFF),
                                      width: 1.2,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                      width: 1.2,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                      width: 1.2,
                                    ),
                                  ),
                                ),
                                style: const TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          loading: () => const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        );
                      },
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
}
