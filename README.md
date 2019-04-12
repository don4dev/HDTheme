# HDTheme

## 特点
* **无侵入**: 无需修改现有View的实现方式
* **易扩展**: 在需要对View添加额外属性支持时，仅需新增或修改相应的Category即可
* **轻量级**: 主体方法代码量不多
* **支持友好**: xib和代码实现的UIView及其子类都可以使用

## 使用

### 添加主题plist文件
主题plist文件的结构如下：

* 类名（Dictionary）
	* 主题类型(Dictionary)
		* 主题参数（Key）
		* 主题值（Value）
* 类名（Dictionary）
	* 主题类型(Dictionary)
		* 主题参数（Key）
		* 主题值（Value）

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>UILabel</key>
	<dict>
		<key>theme1</key>
		<dict>
			<key>textColor</key>
			<string>#00FF00FF</string>
			<key>backgroundColor</key>
			<string>#FF0000FF</string>
			<key>fontSize</key>
			<integer>20</integer>
		</dict>
		<key>theme2</key>
		<dict>
			<key>textColor</key>
			<string>#FF0000FF</string>
			<key>backgroundColor</key>
			<string>#00FF00FF</string>
			<key>fontSize</key>
			<integer>10</integer>
		</dict>
	</dict>
</dict>
</plist>
```

### 加载主题plist文件
把主题plist文件名作为参数传递到 **-[HDThemeManager changeThemeWithThemeName:]**

```
[[HDThemeManager defaultManager] changeThemeWithThemeName:@"theme"];
```

这样就可以完成主题修改。

### UIView及其子类配置
* 代码实现

```
// 设置View的themeType，对应主题plist文件中的主题类型
view.themeType = @"themeType";
```

* xib实现：在xib的Attributes inspector设置Theme Type，对应主题plist文件中的主题类型

## 添加方式
### 手动添加

1. 下载HDTheme文件夹中的所有文件
2. 添加HDTheme文件夹到项目中
3. Import HDTheme.h

## 后续更新
* 添加更多UIView子类支持
* 优化性能和代码结构
* 修复使用过程中遇到的问题

## 许可证
HDTheme 使用 MIT 许可证，详情见 LICENSE 文件。
