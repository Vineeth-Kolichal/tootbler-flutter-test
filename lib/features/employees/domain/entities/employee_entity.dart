import 'package:toobler_flutter_test/features/employees/domain/entities/address_entity.dart';
import 'package:toobler_flutter_test/features/employees/domain/entities/company_entity.dart';
import 'package:equatable/equatable.dart';

class EmployeeEntity extends Equatable {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final AddressEntity? address;
  final String? phone;
  final String? website;
  final CompanyEntity? company;
  const EmployeeEntity({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.company,
    this.website,
  });

  @override
  List<Object?> get props =>
      [id, name, username, email, address, phone, website, company];
}
