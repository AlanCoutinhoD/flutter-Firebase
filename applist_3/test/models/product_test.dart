import 'package:flutter_test/flutter_test.dart';
import 'package:applist_3/models/product.dart';

void main() {
  group('Product Model Tests', () {
    test('should create a Product from JSON', () {
      final json = {
        'id': 1,
        'title': 'Test Product',
        'description': 'Test Description',
        'price': 99.99
      };

      final product = Product.fromJson(json);

      expect(product.id, 1);
      expect(product.title, 'Test Product');
      expect(product.description, 'Test Description');
      expect(product.price, 99.99);
    });
  });
}