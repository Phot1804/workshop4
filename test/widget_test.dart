import 'package:flutter_test/flutter_test.dart';
import 'package:workshop4_111/screen/addform.dart';

void main() {
  testWidgets('AddForm smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const AddForm());

    // Verify that 'เพิ่มข้อมูล' title exists
    expect(find.text('เพิ่มข้อมูล'), findsOneWidget);
  });
}