import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/theory_list.dart';

class ListRenderer extends StatelessWidget {
  final TheoryList list;

  const ListRenderer({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        list.title != null
            ? Text(
                list.title ?? "",
                style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            : Container(),
        list.title != null ? const SizedBox(height: 16) : Container(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: list.items
              .map((listItem) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "·",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            listItem.text,
                            style: const TextStyle(
                                color: AppColors.black,
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
