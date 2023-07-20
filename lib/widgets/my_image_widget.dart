import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyImageWidget extends StatelessWidget {
  double? width;
  double? height;
  String? imageURL;
  BoxShape? shape;
  Color? backgroundColor;
  BorderRadius? borderRadius;
  BoxFit? boxFit;
  MyImageWidget(
      {super.key,
      this.height,
      this.width,
      this.imageURL,
      this.shape,
      this.backgroundColor,
      this.borderRadius,
      this.boxFit});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fadeInDuration: const Duration(milliseconds: 100),
      fadeOutDuration: const Duration(milliseconds: 100),
      fadeInCurve: Curves.easeIn,
      fadeOutCurve: Curves.easeInBack,
      alignment: Alignment.center,
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
        child: SizedBox(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(
              color: Theme.of(context).buttonColor,
              strokeWidth: 2,
            )),
      ),
      errorWidget: (context, url, error) => Center(
        child: Icon(
          Icons.error,
          color: Theme.of(context).buttonColor,
        ),
      ),
      imageUrl: imageURL ?? "",
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            shape: shape ?? BoxShape.rectangle,
            borderRadius: borderRadius,
            color: backgroundColor ?? Colors.grey.shade400,
            image: DecorationImage(
              fit: boxFit ?? BoxFit.fill,
              image: imageProvider,
            )),
      ),
    );
  }
}
