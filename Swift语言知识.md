#  Swift语言
1. 闭包有哪些类型  
   尾随闭包： 闭包作为函数的最后一个参数
   逃逸闭包: 闭包在函数返回之后使用
   自动闭包: 将代码直接作为参数传递 
2. Swift的派发机制
   直接派发： struct, class中final修饰的函数
   函数表: class
   消息转发
3. 存储属性、计算属性和延迟属性
   存储属性： 对应成员变量
   计算属性： 类似于函数调用
   延迟属性： 第一次使用时初始化
4. 什么是可选类型，以及可选的实现
5. 定义静态方法时关键字 static 和 class 有什么区别
   class子类能够重写，static不能.
6. 简要说明Swift中的初始化器?
   构造器可以分为指定构造器、便利构造器、可失败的构造器、必要构造器。
7. 如何理解copy-on-write?
   赋值和作为参数传递时不会拷贝对象，仅修改时才拷贝新对象。
8. Swift和OC协议的异同？
   相同: 都是抽出相同方法和属性.
   不同   
      1. Swift协议能提供默认实现，也能指定特定的类型默认实现。
      2. Swift实现协议可以是枚举、结构体和类。
9. 可选链
   可选类型用?链接在一起，形成可选链。中间任意一个为空，则调用失败，返回空。
10. swift 为什么将 String,Array,Dictionary设计为值类型?
   为了更高效的使用内存。值类型在栈上，引用类型分配在堆上。栈上操作仅涉及单个指针操作，堆上涉及到合并、位移和重链接。同时使用copy-on-write使内存开销降到最低。
11. 描述struct和class




