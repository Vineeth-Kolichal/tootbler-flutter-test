import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toobler_flutter_test/features/employees/presentation/bloc/employee_screen_bloc.dart';

import '../widgets/employee_listtile.dart';
import '../widgets/filter_button.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<EmployeeScreenBloc>().add(const GetEmployeeList());
    });

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Employees",
        ),
      ),
      body: BlocBuilder<EmployeeScreenBloc, EmployeeScreenState>(
        builder: (context, state) {
          //Loading while fetching data from api
          if (state.isLoading) {
            return _buildLoading();
          }
          //Show error message in UI
          if (state.err != null) {
            return _buildErrorOrEmptyMsg("${state.err}");
          }
          //after successfull fetch, showing data in UI
          return _buildDataList(state);
        },
      ),
    );
  }

  Center _buildErrorOrEmptyMsg(String msg) {
    return Center(
      child: Text(msg),
    );
  }

  CustomScrollView _buildDataList(EmployeeScreenState state) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 250.0,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            //Image
            background: Image.asset(
              "assets/images/employees.jpg",
              fit: BoxFit.cover,
            ),
          ),
          // filter button row
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 70,
                color: Colors.white,
                child: Row(
                  children: List.generate(
                      3,
                      (index) => FilterButton(
                          index: index, selectedIndex: state.cityIndex)),
                ),
              )),
        ),
        //Employee list
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return EmpoyeeListTile(
                entity: state.empList[index],
              );
            },
            childCount: state.empList.length,
          ),
        ),
      ],
    );
  }

  Center _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 2,
      ),
    );
  }
}
