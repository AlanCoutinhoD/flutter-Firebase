import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:applist_3/screens/product_list_screen.dart';
import 'package:applist_3/models/product.dart';

void main() {
  testWidgets('ProductListScreen shows products', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ProductListScreen()));
    
    // Esperar a que se carguen los productos
    await tester.pumpAndSettle();

    // Verificar que se muestren los elementos de la lista
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(ListTile), findsWidgets);
  });

  testWidgets('ProductListScreen shows correct product details', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ProductListScreen()));

    // Esperar a que se carguen los productos
    await tester.pumpAndSettle();

    // Obtener el primer producto de la lista
    final product = tester.widget<ListTile>(find.byType(ListTile).first);

    // Verificar que se muestren los detalles del producto correctos
    expect(product.title, 'Product 1');
    expect(product.subtitle, 'Description 1');
  });
}