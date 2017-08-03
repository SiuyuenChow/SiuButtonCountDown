# SiuButtonCountDown For Swift
## 倒计时按钮
### SiuButtonCountDown是UIButton的一个拓展类,直接使用以下方法即可实现倒计时
> func startCountDown(startTime:NSInteger,
startButtonColor:UIColor,
startButtonBorderColor:UIColor,
startTitleColor:UIColor,
countDownTitle:String,
countDownButtonColor:UIColor,
countDownButtonBorderColor:UIColor,
countDownTitleColor:UIColor)

#### 其中
*   startTime 倒计时总时间
*   startButtonColor    倒计时按钮背景颜色
*   startButtonBorderColor 倒计时按钮的边框颜色
*   startTitleColor   倒计时按钮文字颜色
*   countDownTitle   完成倒计时的按钮文字
*   countDownButtonColor   完成倒计时的按钮背景颜色
*   countDownButtonBorderColor    完成倒计时按钮的边框颜色
*   countDownTitleColor  完成倒计时按钮文字颜色

### eg:
> getCodeButton.startCountDown(startTime: 10, startButtonColor: .clear, startButtonBorderColor: .black, startTitleColor:UIColor.hexStringToColor(hexString: "#9be0b4"), countDownTitle: "Get the Code", countDownButtonColor: .clear, countDownButtonBorderColor: .clear, countDownTitleColor: .white)


