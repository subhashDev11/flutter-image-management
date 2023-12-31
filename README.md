
# flutter image management

https://drive.google.com/file/d/1nhbpwoGAAs-O-Om3NoEG-0Ba4XmdO1XH/view

### Table of contents
- [Application structure](#project-structure)
- [How to format your code?](#how-you-can-do-code-formatting)
- [How you can improve code readability?](#how-you-can-improve-the-readability-of-code)
- [Libraries and tools used](#libraries-and-tools-used)
- [Support](#support)


### Check the UI of the entire app

Check the UI of all the app screens from a single place by setting up the 'initialRoute'  to AppNavigation in the AppRoutes.dart file.

### Application structure


```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── app      
    │   ├── app.dart                - Widget for material App, theme & route setting
    │   ├── constants               - Widget for registring providers│
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens 
    ├── state                       - It contains the state of all widgets and app 
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```

### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How you can improve code readability?

Resolve the errors and warnings that are shown in the application.

### Libraries and tools used

- Provider - State management
  https://pub.dev/packages/provider
- cached_network_image - For storing internet image into cache
  https://pub.dev/packages/cached_network_image
- image_cropper - For editing & cropping image
  https://pub.dev/packages/image_cropper
- get_it - For dependency injections
  https://pub.dev/packages/get_it
- http - For api request handling
  https://pub.dev/packages/http

### Support
Contact me on following platform -
1. https://subhash-dev-ca050.web.app/
2. https://www.linkedin.com/in/subhashcs/
3. subhashchandras7318@gmail.com
4. https://github.com/subhashDev11/  



