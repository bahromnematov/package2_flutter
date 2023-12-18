import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future<void> makePhonecall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

  static Future<void> launchInBrouther(Uri url) async {
    if (await launchUrl(url, mode: LaunchMode.externalApplication)) {
    } else {
      throw "Url xato $url";
    }
  }

  static Future<void> textMe() async {
    const uri = 'sms:906660579?body=Salom Odilov';
    if (await canLaunch(uri)) {
      await launch(uri);
    }
  }
}
