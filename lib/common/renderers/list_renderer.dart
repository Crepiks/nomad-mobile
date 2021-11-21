import "package:flutter/material.dart";
import 'package:nomad/common/constants/app_colors.dart';
import 'package:nomad/data/models/theory_list.dart';
import 'package:nomad/data/models/theory_list_item.dart';

class ListRenderer extends StatelessWidget {
  final TheoryList list;

  const ListRenderer({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        list.title != null ? _buildTitle(list.title ?? "") : Container(),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildListItems(list.items))
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text(
          title,
          style: const TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ));
  }

  List<Widget> _buildListItems(List<TheoryListItem> items) {
    return items
        .map((listItem) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
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
                      ),
                    ),
                  )
                ],
              ),
            ))
        .toList();
  }
}
