import 'package:flutter/material.dart';
import 'package:gravity_simulator/features/particle/change_count/model/change_count_model.dart';
import 'package:gravity_simulator/shared/routing/routes.dart';
import 'package:gravity_simulator/shared/ui/textInput/text_input.dart';
import 'package:provider/provider.dart';

class ChangeCount extends StatelessWidget {
  const ChangeCount({super.key});

  void onSubmited(BuildContext context) {
    Navigator.pushNamed(context, Routes.simulation);
  }

  @override
  Widget build(BuildContext context) {
    ChangeCountModel changeCountModel = context.read<ChangeCountModel>();
    return TextInput(
      width: 250,
      type: TextInputType.number,
      placeHolder: "Введите число точек",
      onSubmited: (_) => {onSubmited(context)},
      onChanged: (value) => {changeCountModel.setCount(value)},
    );
  }
}
