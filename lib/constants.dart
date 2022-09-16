import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wallet_connect/wallet_connect.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFF006064);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF0097A7), Color(0xFF006064)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
final mywhite = Colors.white.withOpacity(0.9);
final iconwhite = Colors.white;
final iconblack = Colors.black;
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

final swcClient = WCClient(
  onConnect: () {
    // Respond to connect callback
  },
  onDisconnect: (code, reason) {
    // Respond to disconnect callback
  },
  onFailure: (error) {
    // Respond to connection failure callback
  },
  onSessionRequest: (id, peerMeta) {
    // Respond to connection request callback
  },
  onEthSign: (id, message) {
    // Respond to personal_sign or eth_sign or eth_signTypedData request callback
  },
  onEthSendTransaction: (id, tx) {
    // Respond to eth_sendTransaction request callback
  },
  onEthSignTransaction: (id, tx) {
    // Respond to eth_signTransaction request callback
  },
);
