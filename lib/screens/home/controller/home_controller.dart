import 'package:advanceflutter_exam/screens/home/model/QuizModel.dart';
import 'package:advanceflutter_exam/screens/utils/api_helper.dart';
import 'package:get/get.dart';

class homeController extends GetxController
{

  RxInt index = 0.obs;

  RxList marks = [].obs;
  Future<Animal> QuizApi()
  async {

    ApiHelper apiHelper = ApiHelper();
    Animal a1 = await apiHelper.apicall();

    return a1;
  }
}