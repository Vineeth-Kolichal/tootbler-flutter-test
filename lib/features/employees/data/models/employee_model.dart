import 'package:toobler_flutter_test/features/employees/domain/entities/address_entity.dart';
import 'package:toobler_flutter_test/features/employees/domain/entities/company_entity.dart';
import 'package:toobler_flutter_test/features/employees/domain/entities/employee_entity.dart';

class EmployeeModel extends EmployeeEntity {
  const EmployeeModel({
    required super.id,
    required super.name,
    required super.username,
    required super.email,
    required super.address,
    required super.phone,
    required super.website,
    required super.company,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: Address.fromJson(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: Company.fromJson(json["company"]),
      );
}

class Address extends AddressEntity {
  const Address({
    required super.street,
    required super.suite,
    required super.city,
    required super.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
      );
}

class Company extends CompanyEntity {
  const Company({
    required super.name,
    required super.catchPhrase,
    required super.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
      );
}
