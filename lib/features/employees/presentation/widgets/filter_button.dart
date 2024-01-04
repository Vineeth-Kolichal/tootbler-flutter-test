
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/employee_screen_bloc.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.index,
    required this.selectedIndex,
  });

  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        context.read<EmployeeScreenBloc>().add(Filter(cityIndex: index));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF556bdb), width: 1),
              borderRadius: BorderRadius.circular(7),
              color: selectedIndex == index
                  ? const Color(0xFF8897F3)
                  : Colors.white),
          constraints: const BoxConstraints(minWidth: 80),
          child: Center(
              child: Text(
            context.read<EmployeeScreenBloc>().city[index],
            style: theme.textTheme.labelLarge!
                .copyWith(color: selectedIndex != index ? Colors.black : null),
          )),
        ),
      ),
    );
  }
}

