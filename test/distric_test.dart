import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_4/model/district.dart';

void main() {
  group("Test District", () {
    test("contructor", () {
      var district = District(
        id: "2",
        name: "Hoàn Kiếm",
        level: "Quận nội thành",
        provinceId: "2",
      );
      expect(district.id, "2");
      expect(district.name, "Hoàn Kiếm");
      expect(district.level, "Quận nội thành");
      expect(district.provinceId, "1");
    });
  });
}
