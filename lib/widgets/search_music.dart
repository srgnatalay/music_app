import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:music_app/utils/config.dart';

class SearchMusic extends StatelessWidget {
  const SearchMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Config.paddingAll,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hoş Geldiniz",
            style: Config.welcomeText(context),
          ),
          Config.heightSmall,
          Text(
            "En sevdiğiniz müziğin keyfini çıkarın",
            style: Config.appDescription(context),
          ),
          Config.heightMedium20,
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Config.secondaryColor,
              hintText: "Ara",
              hintStyle: Config.searchText(context),
              prefixIcon: Icon(
                FluentIcons.search_20_regular,
                color: Config.thirdColor.shade400,
              ),
              border: OutlineInputBorder(
                borderRadius: Config.borderCircular,
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
