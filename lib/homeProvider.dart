import 'package:flutter/foundation.dart';

import 'model.dart';

class HomeProvider extends ChangeNotifier{

  bool isPlay=false;

  void playPuse(){
    isPlay=!isPlay;
    notifyListeners();
  }
  List<ModelData> l1=[
    ModelData(vidio: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    ModelData(vidio: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    ModelData(vidio: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    ModelData(vidio: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
  ];
  ModelData s1=ModelData();
}