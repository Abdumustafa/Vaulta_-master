import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulta/core/localization/change_locale.dart';

class LanguageProfileScreen extends GetView<LocaleController> {
  const LanguageProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text(
          '50'.tr,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300))),
                child: TextButton(
                    onPressed: () {
                      //edit app's language
                      controller.changeLang('ar');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset('assets/images/eg.png'),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '3'.tr,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        controller.language == const Locale('ar')
                            ? const Icon(Icons.check,
                                size: 20, color: Colors.black)
                            : const SizedBox
                                .shrink(), // Empty widget if not selected
                      ],
                    )),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300))),
                child: TextButton(
                    onPressed: () {
                      //edit app's language
                      controller.changeLang('en');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset('assets/images/us.png'),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '2'.tr,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        controller.language == const Locale('en')
                            ? const Icon(Icons.check,
                                size: 20, color: Colors.black)
                            : const SizedBox
                                .shrink(), // Empty widget if not selected
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
