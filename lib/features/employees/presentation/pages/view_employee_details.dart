import 'package:flutter/material.dart';
import 'package:toobler_flutter_test/features/employees/domain/entities/employee_entity.dart';

import '../widgets/title_and_data_container.dart';

class ViewEmployeeDetails extends StatelessWidget {
  const ViewEmployeeDetails({super.key, required this.entity});
  final EmployeeEntity entity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee ID: ${entity.id}"),
      ),
      body: ListView(
        children: [
          TitleAndDataContainer(title: "Name", data: entity.name),
          TitleAndDataContainer(title: "Usename", data: entity.username),
          TitleAndDataContainer(title: "e-mail", data: entity.email),
          TitleAndDataContainer(title: "website", data: entity.website),
          TitleAndDataContainer(
              title: "Address",
              data:
                  "${entity.address?.suite}\n${entity.address?.street}\n${entity.address?.city}\n${entity.address?.zipcode}"),
          TitleAndDataContainer(
              title: "Company name", data: entity.company?.name),
        ],
      ),
    );
  }
}
