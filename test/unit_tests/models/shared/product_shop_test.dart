import 'package:bon_appetit/models/shared/product_shop.dart';
import 'package:test/test.dart';

void main() {
  group("ProductShop", () {
    group("toString()", () {
      test('should return expected value when price is null', () {
        const productShop = ProductShop(name: "STORE", url: "url");
        expect(productShop.toString(), "SHOP AT STORE");
      });
      test('should return expected value when price is not null', () {
        const productShop = ProductShop(
          name: "STORE",
          url: "url",
          price: "\$10.00",
        );

        expect(productShop.toString(), "\$10.00 AT STORE");
      });
      test('should return expected value when all properties are not null', () {
        const productShop = ProductShop(
          name: "STORE",
          url: "url",
          price: "\$20.00",
          priceDiscounted: "\$35.00",
        );

        expect(productShop.toString(), "\$20.00 AT STORE");
      });
    });
  });
}
