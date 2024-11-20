import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/widgets/default_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    super.key,
  });

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    // Controllers for form fields
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController reasonController = TextEditingController();
    final TextEditingController bodyController = TextEditingController();

    @override
    void dispose() {
      // Dispose controllers to free up resources
      nameController.dispose();
      emailController.dispose();
      reasonController.dispose();
      bodyController.dispose();
    }

    void _showDialog(String title, String content) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    sendMail({
      required String name,
      required String email,
      required String reason,
      required String body,
    }) async {
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: 'aaronginder@hotmail.co.uk',
        queryParameters: {
          'subject': reason,
          'body': 'Name: $name\nEmail: $email\n\nDescription:\n$body',
        },
      );

      try {
        if (await canLaunchUrl(emailUri)) {
          await launchUrl(emailUri, mode: LaunchMode.platformDefault);
          // Correct usage of the void function `_showDialog`
          _showDialog('Success', 'The email has been sent successfully!');
        } else {
          _showDialog('Error', 'Could not send the email. Please try again.');
        }
      } catch (e) {
        _showDialog('Error', 'An error occurred: $e');
      }
    }

    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              controller: nameController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Your Name",
                hintText: "Enter your name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              controller: emailController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 470,
              child: TextFormField(
                controller: reasonController,
                onChanged: (value) {},
                decoration: const InputDecoration(
                  labelText: "Reason for Contact",
                  hintText: "Select the reason for reaching out",
                ),
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            child: TextFormField(
              controller: bodyController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "How can I Help?",
                hintText: "Enter the details of reaching out",
              ),
              autocorrect: true,
              textAlign: TextAlign.start,
              textInputAction: TextInputAction.newline,
              keyboardType: TextInputType.multiline,
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Center(
            // Fitted box to automatically size the container around the inner
            // container.
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () {
                  // Get value of controllers
                  final name = nameController.text;
                  final email = emailController.text;
                  final reason = reasonController.text;
                  final body = bodyController.text;

                  // Validate form has been populated
                  if (name.isEmpty || email.isEmpty || reason.isEmpty) {
                    _showDialog('Error', 'Please fill in all fields.');
                    return;
                  }

                  // Call sendMail function
                  sendMail(
                    name: name,
                    email: email,
                    reason: reason,
                    body: body,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
