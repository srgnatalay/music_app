import 'package:flutter/material.dart';

class Config {
  static const primaryColor = Colors.deepPurple;
  static const secondaryColor = Colors.white;
  static const thirdColor = Colors.grey;

  static BoxDecoration gradientBG() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          primaryColor.shade800.withOpacity(.8),
          primaryColor.shade200.withOpacity(.8),
        ],
      ),
    );
  }

//HEİGHT
  static const heightSmall = SizedBox(height: 5);
  static const heightMedium10 = SizedBox(height: 10);
  static const heightMedium20 = SizedBox(height: 20);
  static const heightLarge = SizedBox(height: 30);

//WİDTH
  static const widthSmall = SizedBox(width: 10);

//MARGİN
  static const marginAll = EdgeInsets.all(10);
  static const marginTop = EdgeInsets.only(top: 20);
  static const marginBot = EdgeInsets.only(bottom: 10);
  static const marginRight = EdgeInsets.only(right: 10);

//PADDİNG
  static const paddingAll = EdgeInsets.all(20);

  static const paddingSymmetric = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 45,
  );

  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);

  static const paddingTopS = EdgeInsets.only(top: 10);
  static const paddingTopM = EdgeInsets.only(top: 20);

  static const paddingRight = EdgeInsets.only(right: 20);

  static const paddingTPL = EdgeInsets.only(
    top: 20,
    bottom: 20,
    left: 20,
  );

//TEXT STYLE
  static TextStyle songTitle(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle songDescription(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Colors.white,
        );
  }

  static TextStyle playlistTitle(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.bold,
          color: secondaryColor,
        );
  }

  static TextStyle playlistSongs(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall!.copyWith(
          color: secondaryColor.withOpacity(.8),
        );
  }

  static TextStyle playlistInfoTitle(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: secondaryColor,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle playlistIndex(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.bold,
          color: secondaryColor,
        );
  }

  static TextStyle playlistIndexTitle(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.bold,
          color: secondaryColor,
        );
  }

  static TextStyle playlistIndexDescription(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          color: secondaryColor,
        );
  }

  static TextStyle welcomeText(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .titleLarge!
        .copyWith(color: secondaryColor);
  }

  static TextStyle appDescription(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .titleLarge!
        .copyWith(fontWeight: FontWeight.bold, color: secondaryColor);
  }

  static TextStyle searchText(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(color: thirdColor.shade400);
  }

  static TextStyle sectionHeaderTitle(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
          color: secondaryColor,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle sectionHeaderAction(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: secondaryColor,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle songCardTitle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyLarge!
        .copyWith(color: primaryColor, fontWeight: FontWeight.bold);
  }

  static TextStyle songCardDescription(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: primaryColor, fontWeight: FontWeight.bold);
  }

  static TextStyle playSwitch(bool isPlay) {
    return TextStyle(
      color: isPlay ? primaryColor : secondaryColor,
      fontSize: 17,
    );
  }

  static TextStyle shuffleSwitch(bool isPlay) {
    return TextStyle(
      color: isPlay ? secondaryColor : primaryColor,
      fontSize: 17,
    );
  }

  static BorderRadius borderCircular = BorderRadius.circular(15);

//BOX DECORATİON
  static BoxDecoration animatedButton() {
    return BoxDecoration(
      color: secondaryColor,
      borderRadius: borderCircular,
    );
  }

  static BoxDecoration switchDec() {
    return BoxDecoration(
      color: primaryColor.shade600,
      borderRadius: borderCircular,
    );
  }

  static BoxDecoration playlistCardDec() {
    return BoxDecoration(
      color: primaryColor.shade800.withOpacity(.6),
      borderRadius: borderCircular,
    );
  }

  static BoxDecoration songCardImageDec(String img) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
    );
  }

  static BoxDecoration songCardDescriptionDec() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: secondaryColor.withOpacity(.8),
    );
  }
}
