import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

Color primaryColor = Color(0xff13EBCA);
Color secondaryColor = Color(0xff00D4FF);

Future<void> sendEmail({
  required String emailAddress,
  required String body,
  required String phoneNo,
  required String firstName,
  required String lastName,
}) async {
  String? serviceId = dotenv.env['SERVICE_ID'];
  String? templateId = dotenv.env['TEMPLATE_ID'];
  String? userId = dotenv.env['USER_ID'];

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await http.post(url,
      headers: {
        "Content-Type": 'application/json',
      },
      body: json.encode({
        "service_id": serviceId,
        "template_id": templateId,
        "user_id": userId,
        "template_params": {
          "message": body,
          "name": "$firstName $lastName",
          "email": emailAddress,
          "phone": phoneNo,
        }
      }));
  print(response.body);
}
