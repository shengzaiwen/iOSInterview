#  <#Title#>
1. 怎么理解Runloop？
   runloop是一个运行循环，在循环内部会执行soure1、source0和time事件。
2. runloop有哪些模式？
   NSDefaultRunloopMode、UITrackingRunLoopMode和NSRunLoopCommonModes
3. runloop的状态?
   进入runloop -> timer -> source事件 ->  runloop即将进入休眠 -> 即将从休眠中唤醒 -> 退出runloop
4. runloop有哪些事件？
   souce1： 基于port的事件
   source: 非port事件
   time: 定时事件
5. runloop的相关应用有哪些？
   1. NSTimer不准
   2. 后台线程常驻， 增加NSPort到runloop中
   3. 自动释放池 监听runloop开始运行和runloop即将进入休眠
   4. 界面刷新 UI发生变化时，会被标记为待处理，苹果注册了Observer监听即将进入休眠和退出事件， 调用UI刷新
   5. performSelector: afterDelay
   6. Alamofire 2.0 在后台线程回调代理方法
