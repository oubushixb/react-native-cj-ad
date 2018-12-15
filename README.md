
# react-native-cj-ad

## Getting started

`$ npm install react-native-cj-ad --save`

### Mostly automatic installation

`$ react-native link react-native-cj-ad`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-cj-ad` and add `RNCjAd.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNCjAd.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNCjAdPackage;` to the imports at the top of the file
  - Add `new RNCjAdPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-cj-ad'
  	project(':react-native-cj-ad').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-cj-ad/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-cj-ad')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNCjAd.sln` in `node_modules/react-native-cj-ad/windows/RNCjAd.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Cj.Ad.RNCjAd;` to the usings at the top of the file
  - Add `new RNCjAdPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNCjAd from 'react-native-cj-ad';

// TODO: What to do with the module?
RNCjAd;
```

## 重要
使用谷歌广告的时候.必须在app启动时加入以下代码
```
import {
	ADMOBCJ
} from 'react-native-cj-ad';

let appID = 'xxx-xx-xxxxxxxxxx';
ADMOBCJ.init(appID);

```

//TODO
framework无法被static library所识别.
1. staci library也导入了一次googleMobileads.frameworks.
2. 需要主项目也导入googleMobileads.frameworks.
  