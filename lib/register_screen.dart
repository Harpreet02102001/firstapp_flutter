import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/components/comman_textformfield.dart';
import 'package:firstapp/components/main_heading.dart';
import 'package:firstapp/components/submit_button.dart';
import 'package:flutter/material.dart';

final TextEditingController firstNameController = TextEditingController();
final TextEditingController middleNameController = TextEditingController();
final TextEditingController lastNameController = TextEditingController();
final TextEditingController homeAddressController = TextEditingController();
final TextEditingController cityController = TextEditingController();
final TextEditingController zipController = TextEditingController();
final TextEditingController stateController = TextEditingController();
final TextEditingController countryController = TextEditingController();
final TextEditingController cellController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmPassController = TextEditingController();

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: commonAppBar(title: "Create an account"),
      appBar: CommanAppbar(title: "Create an account"),

      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: <Widget>[
            CommanTextformfield(
              label: "FIRST NAME",
              hint: "JOHN",
              prefixIcon: Icon(Icons.person),
              isRequired: true,
            ),
            SizedBox(height: 8),
            CommanTextformfield(
              label: "MIDDLE NAME",
              hint: "",
              isRequired: false,
              prefixIcon: Icon(Icons.person),
            ),
            SizedBox(height: 8),
            CommanTextformfield(label: "LAST NAME", hint: "", isRequired: true),
            SizedBox(height: 8),
            CommanTextformfield(
              label: "HOME ADDRESS",
              hint: "",
              isRequired: true,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: CommanTextformfield(
                    label: "CITY",
                    hint: "",
                    isRequired: true,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: CommanTextformfield(
                    label: "ZIP",
                    hint: "",
                    isRequired: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: CommanTextformfield(
                    label: "STATE",
                    hint: "",
                    isRequired: true,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: CommanTextformfield(
                    label: "COUNTRY",
                    hint: "",
                    isRequired: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            CommanTextformfield(
              label: "CELL NUMBER",
              hint: "(789)-465-4567",
              isRequired: true,
            ),
            SizedBox(height: 8),
            CommanTextformfield(label: "EMAIL", hint: "", isRequired: true),
            SizedBox(height: 8),
            CommanTextformfield(
              label: "PASSWORD",
              hint: "",
              prefixIcon: Icon(Icons.eighteen_mp),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              isRequired: true,
            ),
            SizedBox(height: 8),
            CommanTextformfield(
              label: "CONFIRM PASSWORD",
              hint: "",
              isRequired: true,
            ),
            SizedBox(height: 50),
            SubmitButton(title: "CONTINUE"),
          ],
        ),
      ),
    );
  }
}
