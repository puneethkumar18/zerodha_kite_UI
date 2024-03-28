import 'dart:convert';


class StockDetails {
  late String name;
  late double price;
  late String category;
  StockDetails({
    required this.name,
    required this.price,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'name': name});
    result.addAll({'price': price});
    result.addAll({'category': category});
  
    return result;
  }

  factory StockDetails.fromMap(Map<String, dynamic> map) {
    return StockDetails(
      name: map['name'],
      price: map['price'],
      category: map['category'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StockDetails.fromJson(String source) => StockDetails.fromMap(json.decode(source));

  StockDetails copyWith({
    String? name,
    double? price,
    String? category,
  }) {
    return StockDetails(
      name: name ?? this.name,
      price: price ?? this.price,
      category: category ?? this.category,
    );
  }

  @override
  String toString() => 'StockDetails(name: $name, price: $price, category: $category)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StockDetails &&
      other.name == name &&
      other.price == price &&
      other.category == category;
  }

  @override
  int get hashCode => name.hashCode ^ price.hashCode ^ category.hashCode;
}
