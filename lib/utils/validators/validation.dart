
class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'ต้องใช้รหัสผ่าน.';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'รหัสผ่านต้องมีความยาวอย่างน้อย 6 ตัวอักษร.';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'รหัสผ่านต้องมีอักษรตัวพิมพ์ใหญ่อย่างน้อยหนึ่งตัว.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'รหัสผ่านต้องมีตัวเลขอย่างน้อยหนึ่งตัว.';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'รหัสผ่านต้องมีอักขระพิเศษอย่างน้อยหนึ่งตัว.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'ต้องระบุหมายเลขโทรศัพท์.';
    }

    // Regular expression for phone number validation (assuming a 10 digits)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'รูปแบบหมายเลขโทรศัพท์ไม่ถูกต้อง (ต้องมี 10 หลัก)).';
    }

    return null;
  }
  
  /// Add more validators as needed for your specific requirements.
}