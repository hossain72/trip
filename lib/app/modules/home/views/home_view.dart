import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'widgets/abroad_trip_widget.dart';
import 'widgets/domestic_trip_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        title: const Text(
          'Tours',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.login_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TypeAheadFormField(
                  textFieldConfiguration: TextFieldConfiguration(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Search by destination or area",
                        prefixIcon: Icon(Icons.search_outlined, color: Colors.blueAccent.shade400,),
                        hintStyle: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Nunito',
                            color: Colors.grey),
                        border: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                      )),
                  onSuggestionSelected: (suggestion) {},
                  transitionBuilder: (context, suggestionsBox, controller) {
                    return suggestionsBox;
                  },
                  itemBuilder: (context, item) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            item.toString(),
                            style: const TextStyle(color: Colors.black, fontSize: 16),
                          )
                        ],
                      ),
                    );
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please select a city';
                    } else {
                      return null;
                    }
                  },
                  suggestionsCallback: (String pattern) {
                    return [];
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const DomesticTripWidget(),
                const SizedBox(
                  height: 20,
                ),
                const AbroadTripWidget(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
