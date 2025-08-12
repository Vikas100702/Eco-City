class RegularExpressions {
  static final RegExp emailRegex = RegExp(
      r'^(([^<>\(\)\[\]\\.,;\s@\"]+(\.[^<>\(\)\[\]\\.,;\s@\"]+)*)|(\"[^\"]+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  static final RegExp inputFormatterEmailRegex=RegExp(r'[a-zA-Z0-9@._-]');
  static final RegExp passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z\s])[\S]{8,15}$'
  );

  static final RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9]{6,20}$');
  static final RegExp inputFormatterUsernameRegex = RegExp(r'^[a-zA-Z0-9]');
  static final RegExp inputFormatterDateRegex = RegExp(r'^[0-9]');
  static final RegExp inputFormatterMonthRegex = RegExp(r'^[a-zA-Z]');

}