import "package:flutter/material.dart";
import 'package:nomad/common/colors.dart';
import 'package:nomad/data/models/theory_list.dart';

class TheoryListRenderer extends StatelessWidget {
  final TheoryList item;

  const TheoryListRenderer({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        item.title != null
            ? Text(
                item.title ?? "",
                style: const TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            : Container(),
        item.title != null ? const SizedBox(height: 16) : Container(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: item.items
              .map((listItem) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "·",
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            listItem.text,
                            style: const TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 18,
                                height: 1.3),
                          ),
                        )
                      ],
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
