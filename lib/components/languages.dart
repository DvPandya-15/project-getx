import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Getx Demo',
          'About': 'About',
          'Contact': 'Contact',
          'Counter': 'Counter',
          'Name': 'Name',
          'John Doe': 'John Doe',
          'This is the about page': 'This is the about page',
          'This is the contact page': 'This is the contact page',
          'Translate to English': 'Translate to English',
          'Translate to Hindi': 'Translate to Hindi',
        },
        'hi': {
          'title': 'गेटेक्स डेमो',
          'About': 'बारे में',
          'Contact': 'संपर्क करें',
          'Counter': 'गिनती',
          'Name': 'नाम',
          'John Doe': 'जॉन डो',
          'This is the about page': 'यह विवरण पृष्ठ है',
          'This is the contact page': 'यह संपर्क पृष्ठ है',
          'Translate to English': 'अंग्रेजी में अनुवाद करें',
          'Translate to Hindi': 'हिंदी में अनुवाद करें',
        },
      };
}
