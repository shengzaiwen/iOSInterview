#  <#Title#>
1. OC属性修饰符:
   原子性： nonatomic, automic
   内存管理语义：assign、strong、weak、copy、unsafe_unretained
   读写: readwrite、readonly
   方法名: getter、setter
   编译时会生成_成员变量, setter/getter方法
2. 内存泄漏的原因有哪些？
   1. 循环引用
   2. 非OC对象没有释放内存
   3. 大次数循环内存暴涨
3. KVC和KVO的概念
   KVC键值编码, 间接访问对象属性的方式
4. KVO的实现原理
   重写了属性的getter方法，在值改变时，调用相关方法。 
   重写的流程: 重新设置被观察者的isa指针，指向一个该类的子类。
5. SEL, IMP和Method
   SEL 指方法名
   IMP 方法实现(函数指针)
   METHOD 是一个结构体，包括方法名和方法实施   
5. OC消息传递机制和转发机制
   1.调用objc_msgSend(id, SEL, parameter)，从该类和父类中找相关的方法, 找到则调用，
   2.动态解析方法: 没有找到则动态的添加方法
   3.消息转发： 有其他对象合适对象处理该方法
   4.方法签名: 封装成NSInvocation
6. load和initial：
   加载时机：load类被项目引用到时就会被调用。initial: 类或者子类的第一个方法被调用前调用。     
7. 元类
   初始化具体类的类。里面存着该类的类方法。具体类的isa指针指向元类。
8. 分类和扩展
   分类: 对原类增加方法。仅用于增加方法，增加属性需要用到runtime。
   扩展: 匿名分类，可以定义私有属性。
9. 运行时相关的应用
    1. 方法交换
    2. 分类中增加属性: 关联对象
    3. 字典转模型
10. Block语法实现





