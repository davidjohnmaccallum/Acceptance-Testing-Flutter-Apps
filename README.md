# Acceptance Testing Flutter Apps

I am exploring the options available for automatic acceptance testing of mobile apps. I started with [Ionic](https://github.com/davidjohnmaccallum/Acceptance-Testing-Ionic-Apps). Now I am giving Flutter a go.

The first difference I notice between testing Ionic and Flutter is that the Flutter framework includes the [tooling required to run acceptance tests](https://flutter.dev/docs/cookbook/testing/integration/introduction). This makes it very much easier to set up and run than Ionic.

# How to run me

First clone the project.

```bash
git clone git@github.com:davidjohnmaccallum/Acceptance-Testing-Flutter-Apps.git
cd Acceptance-Testing-Flutter-Apps
```

Then run the tests.

```bash
flutter drive --target=test_driver/app.dart
```

It should open the app, select a contact from the contact list and then close.
