import 'package:url_launcher/url_launcher.dart';

void _email() async {
  String email = Uri.encodeComponent("aaron.ginder@bt.com");
  String subject = Uri.encodeComponent("Hello Flutter Dev's");
  String body = Uri.encodeComponent(
      "Hi! I'm Flutter Developer. This is a Email launcher demo testing.");
  var url = Uri.parse("mailto:$email?subject=$subject&body=$body");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

void main() {
  _email();
}
