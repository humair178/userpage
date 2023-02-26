import 'package:flutter/material.dart';
import '../Model/user.dart';
import '../utils/user_preferences.dart';
import '../widget/appbar_widget.dart';
import '../widget/profile_widget.dart';
import '../widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(
              height: 23,
            ),
            TextFieldWidget(
              label: 'Fullname',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(
              height: 23,
            ),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {},
            )
          ],
        ),
      );
}
