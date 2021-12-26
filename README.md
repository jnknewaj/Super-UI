# super_ui
[![Pub Version](https://img.shields.io/pub/v/super_ui?color=cyan&logo=flutter)](https://https://pub.dev/packages/super_ui)

A flutter package containing a range of different widgets.

## Getting Started

1) add this to your pubspec.yaml file:
```yaml
dependencies:
  super_ui: ^0.0.8+4
```
2) Run this command:
```
$ flutter pub get
```
3) Import:
```dart
import 'package:auth_buttons/super_ui.dart';
```

# Some of the widgets

## Images

1. CircularImageHolder : Circular widget for fetching both network image and file image.

![Example 1](assets/readme_images/circular_image.png)

```dart
CircularImageHolder(
  imageSize: 0.5,
  imageUrl: 'https://i.gadgets360cdn.com/large/google_io_afp_1583296131115.jpg',
  icon: Icons.add,
  iconBackgroundColor: Colors.pink,
),
```

## Buttons

1. GradientButton : Button with gradient effect.
2. IcButton : Button with icon.
3. SuperButton : Supports almost all important property that a fancy button should have.
4. AuthButton : Buttons with logo of social media like fb, twitter etc.

![Example 2](assets/readme_images/buttons.png)

![Example 3](assets/readme_images/auth_buttons.png)
```dart
AuthButton(
  item: SocialItem.microsoft,
  onPressed: () {},
),
```

![Example 4](assets/readme_images/mini_auth_buttons.png)

## Others

1. BillboardText : A widget to show highlighed text (Normal, Error, Warning).
2. Bubble
3. GlowingStars
4. EmptyWidget : To show whitespace
5. SuperRichText : A two parted Text widget to show two different style.

![Example 5](assets/readme_images/glowing_stars.png)

** TextFields **

1. EditText : Simple TextFormField, but easier to use.
