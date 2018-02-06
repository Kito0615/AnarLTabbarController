# AnarLTabbarController

## English Introduction

#### This is a quick way to creat custom tabbar.

##### Usage:

=======
1.Import `AnarLTabbarController.h` into `YourProject`

2.Create these arguments `TabbarControllersArray`, `TabbarTitlesArray`, `TabbarDefaultImageNamesArray`, `TabbarHighlightedImageNamesArray`, `TabbarTintColor`, `TabbarBackgroundColor`. Also, these arguments can be nil excpet `TabbarControllersArray`

3.Create `AnarLTabbarController` in `YourViewController.m` or `YourAppDelegate.m` use this method:

```c
- (instancetype)initWithControllers:(NSArray<UIViewController *> *)controllers titles:(NSArray<NSString *> *)titles defaultImages:(NSArray<NSString *> *)images highLightedImages:(NSArray<NSString *> *)highlightedImages barTintColor:(UIColor *)tintColor barBackgroundColor:(UIColor *)backgroundColor;
```

4.Then you can use this `AnarLTabbarController`. Enjoy it.

If any questions you have, please e-mail me:[anar0615@sina.com](mailto:anar0615@sina.com "Mail to me."). Or on my [Weibo](http://weibo.com/409498119 "Message to me").

#### Example
![](https://github.com/Kito0615/AnarLTabbarController/raw/master/Example.gif)  

## 中文说明

#### 通过本类可以快速创建选项栏

##### 使用方法：

1.在`你的工程`中导入`AnarLTabbarController.h`文件

2.创建以下参数:`TabbarControllersArray`, `TabbarTitlesArray`, `TabbarDefaultImageNamesArray`, `TabbarHighlightedImageNamesArray`, `TabbarTintColor`, `TabbarBackgroundColor`. 当然，除了 `TabbarControllersArray`参数以外，其他参数可以传nil。

3.在`ViewController.m` 或 `AppDelegate.m` 文件中使用以下方法创建`AnarLTabbarController`对象:

```c
- (instancetype)initWithControllers:(NSArray<UIViewController *> *)controllers titles:(NSArray<NSString *> *)titles defaultImages:(NSArray<NSString *> *)images highLightedImages:(NSArray<NSString *> *)highlightedImages barTintColor:(UIColor *)tintColor barBackgroundColor:(UIColor *)backgroundColor;
```

4.接着，你就可以使用了。

#### 如果有任何疑问或bug，请联系我邮箱：[anar0615@sina.com](mailto:anar0615@sina.com "发送邮件"). 或者在[微博](http://weibo.com/409498119 "私信给我")上私信我.

#### 示例
![](https://github.com/Kito0615/AnarLTabbarController/raw/master/Example.gif)

感谢你的关注！
