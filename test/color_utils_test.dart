import "package:flutter/material.dart";
import "package:rainbow_bg_app/color_utils.dart";
import "package:test/test.dart";

void main() {
  group("ColorUtils", () {
    test(".getInverted() should work with solid color", () {
      const color = Color(0xffff0000);
      expect(color.getInverted(), const Color(0xff00ffff));
    });
    test(".getInverted() should work with non-solid color", () {
      const color = Color(0xaabbbbbb);
      expect(color.getInverted(), const Color(0xaa444444));
    });
  });
}
