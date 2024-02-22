import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_4/model/userinfo.dart';
import 'package:flutter_application_4/model/addressinfo.dart';
import 'package:flutter_application_4/model/district.dart';
import 'package:flutter_application_4/model/province.dart';
import 'package:flutter_application_4/model/ward.dart';

void main() {
  group('UserInfo Tests', () {
    test('constructor with AddressInfo', () {
      final addressInfo = AddressInfo(
        province: Province(name: 'Hà Nội'),
        district: District(name: 'Hoàn Kiếm'),
        ward: Ward(name: 'Hàng Buồm'),
        street: 'Đê La Thành',
      );

      final userInfo = UserInfo(
        name: 'Đức',
        email: 'hoatuvong2309@gmail.com',
        phoneNumber: '0968342455',
        birthDate: DateTime(2000, 01, 01),
        address: addressInfo,
      );

      expect(userInfo.name, 'Đức');
      expect(userInfo.email, 'hoatuvong2309@gmail.com');
      expect(userInfo.phoneNumber, '0968342455');
      expect(userInfo.birthDate, DateTime(2000, 01, 01));
      expect(userInfo.address, addressInfo);
    });

    test('constructor without AddressInfo', () {
      final userInfo = UserInfo(
        name: 'Đức',
        email: 'hoatuvong2309@gmail.com',
        phoneNumber: '0968342455',
        birthDate: DateTime(2000, 01, 01),
      );

      expect(userInfo.name, 'Đức');
      expect(userInfo.email, 'hoatuvong2309@gmail.com');
      expect(userInfo.phoneNumber, '0968342455');
      expect(userInfo.birthDate, DateTime(2000, 01, 01));
      expect(userInfo.address, isNull);
    });

    test('toJson() and fromJson()', () {
      final userInfo = UserInfo(
        name: 'Đức',
        email: 'hoatuvong2309@gmail.com',
        phoneNumber: '0968342455',
        birthDate: DateTime(2000, 01, 01),
        address: AddressInfo(
          province: Province(name: 'Hà Nội'),
          district: District(name: 'Hoàn Kiếm'),
          ward: Ward(name: 'Hàng Buồm'),
          street: 'Đê La Thành',
        ),
      );

      final jsonStr = userInfo.toJson();

      final decodedUserInfo = UserInfo.fromJson(jsonStr);

      expect(decodedUserInfo.name, userInfo.name);
      expect(decodedUserInfo.email, userInfo.email);
      expect(decodedUserInfo.phoneNumber, userInfo.phoneNumber);
      expect(decodedUserInfo.birthDate, userInfo.birthDate);
      expect(decodedUserInfo.address?.province?.name,
          userInfo.address?.province?.name);
      expect(decodedUserInfo.address?.district?.name,
          userInfo.address?.district?.name);
      expect(decodedUserInfo.address?.ward?.name, userInfo.address?.ward?.name);
      expect(decodedUserInfo.address?.street, userInfo.address?.street);
    });
  });
}
