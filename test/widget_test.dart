import 'package:flutter_test/flutter_test.dart';
import 'package:foodapp/main.dart';
import 'package:foodapp/providers/auth_provider.dart';

void main() {
  testWidgets('FoodExpressApp smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const FoodExpressApp());

    expect(find.byType(FoodExpressApp), findsOneWidget);
    expect(find.text('Create Account'), findsOneWidget);
  });

  test('registration must be followed by login before entering home', () {
    final authProvider = AuthProvider();

    expect(authProvider.isLoggedIn, isFalse);
    expect(
      authProvider.register(
        fullName: 'Taylor Smith',
        email: 'taylor@example.com',
        phone: '555-0100',
        address: '1 Main Street',
        password: 'secret123',
      ),
      isTrue,
    );
    expect(authProvider.isLoggedIn, isFalse);
    expect(authProvider.login('taylor@example.com', 'incorrect'), isFalse);
    expect(authProvider.isLoggedIn, isFalse);
    expect(authProvider.login('taylor@example.com', 'secret123'), isTrue);
    expect(authProvider.isLoggedIn, isTrue);
  });
}
