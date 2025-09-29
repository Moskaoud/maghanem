class Customer {
  final int? id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final DateTime createdAt;

  Customer({
    this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      address: map['address'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, email: $email, phone: $phone, address: $address, createdAt: $createdAt)';
  }
}



