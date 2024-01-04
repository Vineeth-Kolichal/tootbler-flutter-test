import 'package:flutter/material.dart';
import 'package:toobler_flutter_test/features/employees/presentation/pages/view_employee_details.dart';

import '../../../../common/widgets/space.dart';
import '../../domain/entities/employee_entity.dart';

class EmpoyeeListTile extends StatelessWidget {
  const EmpoyeeListTile({
    super.key,
    required this.entity,
  });
  final EmployeeEntity entity;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => ViewEmployeeDetails(entity: entity)));
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${entity.name}",
                      style: theme.textTheme.titleMedium!
                          .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Designation",
                      style: theme.textTheme.bodyMedium!.copyWith(
                          color: const Color.fromARGB(255, 141, 140, 140)),
                    )
                  ],
                ),
                Space.y(5),
                Text(
                  "${entity.address?.street}",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "${entity.address?.city}",
                  style: theme.textTheme.bodyLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
