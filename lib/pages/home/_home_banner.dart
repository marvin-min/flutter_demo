import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeBannerWidget extends StatelessWidget {
  final List swipeDataList = [
    {
      "image": "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Articles/Boost+Your+Immune+System/immune+system+foods-front.jpg",
      "url": "https://www.active.com/fitness/articles/how-to-boost-your-immune-system-for-the-winter",
      "title": "How to Boost Your Immune System for the Winter?"
    },
    {
      "image": "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Articles/Best+Gifts+for+Fitness+Buffs/front.png",
      "url": "https://www.active.com/fitness/articles/the-best-gifts-for-fitness-buffs",
      "title": "The Best Gifts for Fitness Buffs"
    },
    {
      "image": "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Running/Articles/Best+Stocking+Stuffers+for+Runners/front.png",
      "url": "https://www.active.com/running/articles/the-best-stocking-stuffers-for-runners",
      "title": "The Best Stocking Stuffers for Runners."
    }
  ];

//  HomeBannerWidget({this.swipeDataList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 333,
      width: 750,
      child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              swipeDataList[index]["image"],
              fit: BoxFit.fill,
            );
          },
          itemCount: swipeDataList.length,
          pagination: new SwiperPagination(),
          onTap: (int index) {
            print(swipeDataList[index]["url"]);
          }),
    );
  }
}
