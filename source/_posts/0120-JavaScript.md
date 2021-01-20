---
title: JavaScript學習筆記
date: 2021-01-20 22:58:44
tags: JavaScript
categories: 筆記
---
學習JavaScript的歷程及我覺得的重點
***
<!-- more -->
# 初探JavaScript

* 2021-1-20，吃晚飯的時候測試剛搭好不久的Blog，但想到很多自定義的東西又要放入 `head` 啊，寫script又要在什麼什麼結構上寫啊，各種很朦朧的概念東西，就渾身不舒服。很想自己用上自己寫的功能，於是開啟了學習JavaScript之路~ 😁
這個時候我看的是 [廖雪峰的JavaScript教程](https://www.liaoxuefeng.com/wiki/1022910821149312) ，一開始是邊吃飯邊隨便看看的，但發現寫的很容易理解，而且廖大神這個網站做得簡直逆天啊直接run調試窗口，第一次見到的我也是目瞪口呆，果斷收藏。👍

# 語法筆記

## 基本數據表示、判斷

### 變量
变量名是大小写英文、数字、`$`和`_`的组合，且不能以数字开头.

    var a; //申明了变量a，此时a的值为undefined
    var $b = 1; // 申明了变量$b，同时给$b赋值，此时$b的值为1
    var t = null; // t的值是null
可以發現特點是不用再去在意數據類型了TAT..

#### Notice：賦值

JavaScript是動態語言。
>使用等号=对变量进行赋值。可以把任意数据类型赋值给变量，同一个变量可以反复赋值，而且可以是不同类型的变量，但是要注意**只能用var申明一次**，例如：
>
>var a = 123; // a的值是整数123
>a = 'ABC'; // a变为字符串

### 注釋

與C一樣用 `//` 單行注釋，用 `/*...*/` 區塊注釋。

### 數學/數字/Number

JavaScript不區分 **整數** 和 **浮點數** 。(羌胡~ 起飛~ ✈)
> NaN; // NaN表示**Not a Number**，当无法计算结果时用NaN表示
> Infinity; // Infinity表示无限大，当数值超过了JavaScript的Number所能表示的最大值时，就表示为Infinity

### 字符串

> 字符串是以单引号'或双引号"括起来的任意文本，比如'abc'，"xyz"等等。请注意，''或""本身只是一种表示方式，不是字符串的一部分，因此，字符串'abc'只有a，b，c这3个字符。

### 布爾/比較/bool/boolean/compare

    && = and
    || = or
    ! = not

與C一樣， `=, <=, >=, ==` 
JavaScript有 `===` 比較
>==比较，它会自动转换数据类型再比较，很多时候，会得到非常诡异的结果；
>
>===比较，它不会自动转换数据类型，如果数据类型不一致，返回false，如果一致，再比较。
>
>由于JavaScript这个设计缺陷，不要使用 == 比较，始终坚持使用===比较。

>NaN 与所有其他值都不相等，包括它自己：
>NaN === NaN; // false

只能用 **isNaN()函數** 判斷是否為 NaN

    isNaN(NaN); // true

#### Notice: 浮點數的相等比較

>1 / 3 === (1 - 2 / 3); // false
>浮点数在运算过程中会产生误差，因为计算机无法精确表示无限循环小数。要比较两个浮点数是否相等，只能计算它们之差的绝对值，看是否小于某个阈值：
>
>Math.abs(1 / 3 - (1 - 2 / 3)) < 0.0000001; // true

### 空和未定義/null and undefined

>null表示一个“空”的值，0是一个数值，''表示长度为0的字符串。
>
>**大多数情况下，我们都应该用null**。undefined仅仅在判断函数参数是否传递的情况下有用。

### 對象

~~好耶有對象了！~~

>JavaScript的对象是一组由 **键&值** 组成的无序集合，例如：

    var person = {
        name: 'Bob',
        age: 20,
        tags: ['js', 'web', 'mobile'],
        city: 'Beijing',
        hasCar: true,
        zipcode: null
    };
>JavaScript对象的键都是字符串类型，值可以是任意数据类型。上述person对象一共定义了6个**键值对**，其中每个键又称为**对象的属性**，例如，person的name属性为'Bob'，zipcode属性为null。
>
>用 `对象变量.属性名` 的方式获取一个对象的属性：

    person.name; // 'Bob'
    person.zipcode; // null

## 控制台操作/console



***
太晚了改天寫..開學了...早8人早八魂 QAQ
