import 'package:advanceflutter_exam/screens/home/controller/home_controller.dart';
import 'package:advanceflutter_exam/screens/home/model/QuizModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  homeController controller = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "Quiz Api",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.green.shade900),
        body: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              Animal? a1 = snapshot.data;
              List<Result> l1 = a1!.results;
              return Center(
                child: Container(
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green.shade100),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Obx(
                          () => Center(
                            child: Text(
                              "${l1[controller.index.value].question}",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {

                              },
                              child: Container(
                                height: 70,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Obx(
                                  () => Center(
                                    child: Text(
                                        "A. ${l1[controller.index.value].incorrectAnswers[0]}",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Obx(
                                  () => Text(
                                      "B. ${l1[controller.index.value].incorrectAnswers[1]}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 70,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Obx(
                                () => Center(
                                  child: Text(
                                      "C. ${l1[controller.index.value].incorrectAnswers[2]}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17)),
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Obx(
                                  () => Center(
                                    child: Text(
                                        "D. ${l1[controller.index.value].correctAnswer}",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.index.value++;
                            if(controller.index.value == 10)
                              {

                                Get.toNamed('/marks');
                              }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,fixedSize: Size(80, 50)),
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
          future: controller.QuizApi(),
        ),
      ),
    );
  }
}
