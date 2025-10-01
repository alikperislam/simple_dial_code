### Simple Dial Code

![alt text](https://img.shields.io/pub/v/simple_dial_code.svg)

![alt text](https://img.shields.io/badge/License-MIT-yellow.svg)


A minimalist, zero-dependency Dart package for converting between ISO
3166-1 alpha-2 country codes (e.g., TR) and telephone dialing codes
(e.g., +90).

This package was created to solve a simple problem without relying on
larger, more complex libraries that include UI components or other
unnecessary features.

------------------------------------------------------------------------

✨ Features

-   ✅ Bidirectional Conversion: Convert from ISO code to dial code and
    vice versa.
-   ✅ Zero Dependencies: Pure Dart implementation with no external
    packages.
-   ✅ Lightweight and Fast: Uses a simple static map for instant
    lookups.
-   ✅ User-Friendly:
    -   Handles dial codes with or without the leading + symbol.
    -   ISO code lookups are case-insensitive.
-   ✅ Curated Data: The data map is curated to handle shared dial
    codes. For example, +1 correctly maps to US as the primary country.

------------------------------------------------------------------------

🚀 Getting Started

Add the package to your project’s pubspec.yaml file:

    dependencies:
      simple_dial_code: ^1.0.0 # Make sure to use the latest version from pub.dev

Then, run:

    flutter pub get

------------------------------------------------------------------------

📖 Usage

Import the package where you need to use it:

    import 'package:simple_dial_code/simple_dial_code.dart';

➡️ Convert from ISO Code to Dial Code

Use the fromIsoCode static method. This is perfect for when you have a
country identifier and need its phone prefix.

    void main() {
      // --- Successful lookups ---
      final dialCodeTR = SimpleDialCode.fromIsoCode('TR'); // Result: '+90'
      final dialCodeUS = SimpleDialCode.fromIsoCode('us'); // Result: '+1'

      print(dialCodeTR); // Output: +90
      print(dialCodeUS); // Output: +1

      // --- Handling a non-existent code ---
      final nonExistent = SimpleDialCode.fromIsoCode('XX'); // Result: null
      print(nonExistent); // Output: null
    }

⬅️ Convert from Dial Code to ISO Code

Use the fromDialCode static method. This is useful when you have a phone
number’s prefix and need to identify the primary country associated with
it.

    void main() {
      // --- Successful lookups ---
      final isoCodeTR = SimpleDialCode.fromDialCode('+90'); // Result: 'TR'
      final isoCodeDE = SimpleDialCode.fromDialCode('49');  // Result: 'DE'

      print(isoCodeTR); // Output: TR
      print(isoCodeDE); // Output: DE

      // --- Handling a non-existent code ---
      final nonExistent = SimpleDialCode.fromDialCode('+9999'); // Result: null
      print(nonExistent); // Output: null
    }

------------------------------------------------------------------------

🤝 Contributing

Contributions are welcome! If you find any issues, have suggestions for
improvements, or want to add more country codes, please open an issue or
submit a pull request on the GitHub repository.

------------------------------------------------------------------------

📝 License

This project is licensed under the MIT License - see the LICENSE file
for details.