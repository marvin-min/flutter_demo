import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeBannerWidget extends StatelessWidget {
  final List swipeDataList = [
    {
      "image": "https://www.active.com/asset_pipeline/teasers/browse-running-31b0296970bdf010fe2fb0565b230c81.jpg",
      "url": "https://www.active.com/running",
      "title": "Running"
    },
    {
      "image": "https://www.active.com/asset_pipeline/teasers/browse-kids-family-626d603de9b7535e4a87ccf5817d2009.jpg",
      "url": "https://www.activekids.com",
      "title": "Kids & Family"
    },
    {
      "image": "https://www.active.com/asset_pipeline/teasers/browse-cycling-5e5f803fed0a9c7443ec229956348110.jpg",
      "url": "https://www.active.com/cycling",
      "title": "Cycling"
    },
    {
      "image": "https://www.active.com/asset_pipeline/teasers/browse-outdoors-4608b400b57b65906c0b3cd19fb2e8f5.jpg",
      "url": "https://www.active.com/outdoors",
      "title": "Outdoors"
    }
  ];

//  HomeBannerWidget({this.swipeDataList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:  ScreenUtil().setWidth(52)),
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(350),
      child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              swipeDataList[index]["image"],
              fit: BoxFit.fill,
            );
          },
          itemCount: swipeDataList.length,
          pagination: new SwiperPagination(),
          autoplay: true,
          onTap: (int index) {
            print(swipeDataList[index]["url"]);
          }),
    );
  }
}
