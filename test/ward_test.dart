import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_4/model/ward.dart';

void main() {
  group("Test Ward", () {
    test("contructor", () {
      var ward = Ward(
          id: "2",
          name: "Hoàn Kiếm",
          level: "Phường nội thành",
          provinceId: "2",
          districtId: "2");
      expect(ward.id, "2");
      expect(ward.name, "Hoàn Kiếm");
      expect(ward.level, "Phường nội thành");
      expect(ward.provinceId, "2");
      expect(ward.districtId, "2");
    });
  });
}
