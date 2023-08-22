import 'package:get/get.dart';
import 'package:musicly_task/view/screens/drink_type_screen.dart';
import 'package:musicly_task/view/screens/favorite_matches_screen.dart';
import 'package:musicly_task/view/screens/gender_selection_screen.dart';
import 'package:musicly_task/view/screens/get_notification_screen.dart';
import 'package:musicly_task/view/screens/interest_screen.dart';
import 'package:musicly_task/view/screens/message_screen.dart';
import 'package:musicly_task/view/screens/model_screen.dart';

class HomeController extends GetxController {
  final _pageIndex = 0.obs;

  void setPageIndex(int index) => _pageIndex(index);

  get getPageIndex => _pageIndex.value;


  List<dynamic> pageList = [  const ModelScreen(), MatchesScreen(), MessageScreen(), const GenderSelectionScreen() ];

}
