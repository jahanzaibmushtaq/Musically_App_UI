import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicly_task/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exit(0);
      },
      child: Obx(
            ()=> Scaffold(
          body: homeController.pageList[homeController.getPageIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: homeController.getPageIndex,
            selectedItemColor:Colors.green,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.grey,
            onTap: (int index)=>homeController.setPageIndex(index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.copy_sharp),label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),label: ""),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_sharp),
                label: '',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
