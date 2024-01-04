import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toobler_flutter_test/common/widgets/space.dart';
import 'package:toobler_flutter_test/features/employees/presentation/bloc/employee_screen_bloc.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> city = ["All", "Antonette", "Gwenborough"];
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        centerTitle: true,
        title: Text(
          "Employees",
          style: theme.textTheme.titleLarge!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<EmployeeScreenBloc, EmployeeScreenState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: <Widget>[
              //2
              SliverAppBar(
                expandedHeight: 250.0,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/images/employees.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(70),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => GestureDetector(
                                  onTap: () {
                                    context
                                        .read<EmployeeScreenBloc>()
                                        .add(GetEmployeeList(cityIndex: index));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      height: 35,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xFF556bdb),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: state.cityIndex == index
                                              ? const Color(0xFF8897F3)
                                              : Colors.white),
                                      constraints:
                                          const BoxConstraints(minWidth: 80),
                                      child: Center(
                                          child: Text(
                                        city[index],
                                        style: theme.textTheme.labelLarge!
                                            .copyWith(
                                                color: state.cityIndex != index
                                                    ? Colors.black
                                                    : null),
                                      )),
                                    ),
                                  ),
                                )),
                      ),
                    )),
              ),

              //3
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                    return EmpoyeeListTile();
                  },
                  childCount: 20,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class EmpoyeeListTile extends StatelessWidget {
  const EmpoyeeListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
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
                    "Name",
                    style: theme.textTheme.titleMedium!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Designation",
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: Color.fromARGB(255, 141, 140, 140)),
                  )
                ],
              ),
              Space.y(5),
              Text(
                "Address1",
                style: theme.textTheme.bodyLarge,
              ),
              Text(
                "Address2",
                style: theme.textTheme.bodyLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
