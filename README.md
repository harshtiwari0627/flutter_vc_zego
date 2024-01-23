
```markdown
# Flutter Video Calling App with Zego Cloud SDK and ZegoUIKitPrebuiltCall

This Flutter app showcases video calling functionality using the Zego Cloud SDK and ZegoUIKitPrebuiltCall.

## Integration Steps

### Add ZegoUIKitPrebuiltCall Dependency

Run the following command in your project root directory to add ZegoUIKitPrebuiltCall as a dependency:

```bash
flutter pub add zego_uikit_prebuilt_call
```

### Import the SDK in Dart Code

In your Dart code, import the prebuilt Call Kit SDK:

```dart
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
```

### Use ZegoUIKitPrebuiltCall in Your Project

Create a Flutter widget, such as `CallPage`, to initiate video calls:

```dart
class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: yourAppID, // Fill in the appID from ZEGOCLOUD Admin Console.
      appSign: yourAppSign, // Fill in the appSign from ZEGOCLOUD Admin Console.
      userID: 'user_id',
      userName: 'user_name',
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
```

### Configure Your Project

#### Android

- Modify `compileSdkVersion` to 33 in `your_project/android/app/build.gradle`.
- Set `minSdkVersion` to 21.
- Update Kotlin version and Gradle classpath in `your_project/android/app/build.gradle`.
- Set Gradle version to >= 7.0 in `your_project/android/gradle/wrapper/gradle-wrapper.properties`.
- Add required app permissions in `your_project/app/src/main/AndroidManifest.xml`.
- Prevent code obfuscation by creating a `proguard-rules.pro` file in `your_project/android/app`.

#### iOS

- Add necessary app permissions in `your_project/ios/Podfile`.
- Update Info.plist in `your_project/ios/Runner` with camera and microphone access descriptions.
- Disable "Build Libraries for Distribution" in `your_project/iOS/Runner.xcworkspace`.

### Run & Test

Click "Run" or "Debug" to test your app on your device.

## Additional Notes

- Make sure to replace `yourAppID` and `yourAppSign` with your actual Zego App ID and App Sign key.
- Visit the [Zego Documentation](https://doc-en.zego.im/en/5546.html) for detailed information on the Zego Cloud SDK.
- Explore the [Zego UIKit Prebuilt Call Documentation](https://github.com/zegoim/zego-flutter-sdk) for additional details on ZegoUIKitPrebuiltCall.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
```

Replace `yourAppID` and `yourAppSign` with your actual Zego App ID and App Sign key in the code. This consolidated Markdown script provides a clear and organized structure for your GitHub README file.
