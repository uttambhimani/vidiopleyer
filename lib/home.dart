import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:vidiopleyer/homeProvider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset("${Provider.of<HomeProvider>(context,listen: false).l1}");
    chewieController = ChewieController(videoPlayerController: videoPlayerController!);

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          height: 200,
          child: InkWell(onTap: (){

            Provider.of<HomeProvider>(context,listen: false).playPuse();

            if(Provider.of<HomeProvider>(context,listen: false).isPlay==false){

              videoPlayerController!.play();
            }else{

              videoPlayerController!.pause();
            }

          },
      child: Chewie(
    controller: chewieController!,
    ),
          ),
    ),
      )
    );
  }
}
