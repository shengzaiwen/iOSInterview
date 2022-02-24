#  <#Title#>

1. 事件响应链和探测链
   探测链： 用户点击屏幕 -> UIApplication -> UIWindow -> rootView -> 最前面的view 
   响应链： 当前最适合响应的UIView -> SuperView -> UIViewController -> UIWindow -> UIApplication -> Appdelegate
   探测链的2个方法: pointInside、hiteTestView2个方法
   遍历方法: 后续深度优先
2. UIView和CALayer关系
   UIView是对CALayer的一层封装。 UIView的内容显示由CALayer提供，事件响应由于其继承了UIResponder。
3. 异步渲染概念？异步绘制的流程？ 为社么要一步渲染？什么场景适合异步渲染？
   概念： 把绘制的内容在子线程绘制好，将绘制好的图片在主线程使用.
   流程: UIView.setNeedDisplay -> CALayer.setNeedDisplay -> CAlayer.display -> Calayer.delegate.drawLayer -> 创建图片上下文 -> 绘制 -> 生成图片 -》 赋值给当前view
   目的：绘制消耗大的场景，放到后台线程，提高用户体验.
4. 离屏渲染， 哪些操作会引起离屏渲染？
   概念：GPU无法将渲染结果放到帧缓存中，只能另外开辟一块内存区域存储。
   触发离屏渲染的操作：cornerRadius + clipsToBound、 阴影没有指定阴影形状
shouldRasterize: 光栅化
opacity和alpha区别：
   alpha是UIView的属性， Opacity是CALayer的属性。2者都会影响子视图的透明度。设置完全透明时,opacity不会影响事件传递。
图片展示经历的步骤
UIResponder的理解
layoutSubView触发时机
CoreAnimation



UI出现问题：查看视图层次

