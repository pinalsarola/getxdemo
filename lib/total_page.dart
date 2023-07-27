import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxprojects/my_cart.dart';

import 'My_Controller.dart';

class Totalpage extends StatelessWidget {
  Totalpage({Key? key}) : super(key: key);

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            "Total items",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10,),
            Obx(()=>Text("${c.sum.toString()}",style: TextStyle(
              fontSize: 40,
              color: Colors.redAccent,
            ),
            )),
            SizedBox(height: 10,),
            Container(
              width: 180,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue.shade900,

              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () async {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyCart()));
                },
                child: Text(
                  "Go Back",style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                ),
                ),
            ),

              ),



          ],
          ),
        ),
      ),
    );
  }
}
