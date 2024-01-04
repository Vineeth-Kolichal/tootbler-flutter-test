import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;

  const AddressEntity({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
  });

  @override
  List<Object?> get props => [street, suite, city, zipcode];
}
