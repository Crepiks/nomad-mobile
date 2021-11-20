import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad/common/colors.dart';
import 'package:nomad/common/components/common_back_button.dart';
import 'package:nomad/data/models/unit.dart';
import 'package:nomad/units/components/unit_card.dart';
import 'package:nomad/units/layouts/unit_layout.dart';

class UnitsView extends StatefulWidget {
  final List<Unit> units;

  const UnitsView({Key? key, this.units = const []}) : super(key: key);

  @override
  _UnitsViewState createState() => _UnitsViewState();
}

class _UnitsViewState extends State<UnitsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            children: [
              Row(
                children: const [CommonBackButton()],
              ),
              const SizedBox(
                height: 14,
              ),
              ..._buildUnits(widget.units)
            ],
          )),
    );
  }

  List<Widget> _buildUnits(List<Unit> units) {
    return units.asMap().entries.map((entry) {
      final int index = entry.key;
      final Unit unit = entry.value;

      return Container(
          padding: const EdgeInsets.only(bottom: 14),
          child: UnitCard(
              onTap: () {
                _navigateToUnitScreen(context, units, index);
              },
              title: unit.theory.title));
    }).toList();
  }

  _navigateToUnitScreen(BuildContext context, List<Unit> units, int index) {
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) => UnitLayout(units: units, index: index)));
  }
}
