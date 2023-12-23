[标题编号](#number)




### 一级标题
使用 # 符号进行分级
### 段落
段落的分布

用空白行进行分割，
不然不会产生分段效果

### 换行
可以使用两个或多个空格跟一个enter键实现换行。  
但因为空格看不见，markdown允许使用br<br>进行换行。

### 强调
加粗使用**粗体部分**  
斜体使用*斜体部分*  
加粗斜体***加粗斜体部分***

### 引用
> 引用使用">"符号<br>带个空格
>
> 多行引用使用带">"的空白行
> >嵌套引用

### 列表语法
#### 有序列表
1. 第一行
    
        cout<<"一行空白行加两个缩进制表符,完成代码块";
2. 第二行
   > 这是引用
   > 
   > 图片类似
3. 第三行
   1. Tab直接缩进下一级
   2. 第三二行
4. 第四行

#### 无序列表
- 第一
- 第二
  - 第二一
  - 第二二
  1. 内部排序
  2. 内部排序2
1. 
- 第三  


### 代码

#### 单词或短语
反引号包裹以 generate `nano`  
如果有反引号在句子中.则使用双反引号  
``Use `code` in your Markdown file.``

### 分割线
***
---
___

三个效果一样

___

在后边添加空白行保障**兼容性考虑**

### 链接
[Markdown官方教程](http://markdown.com.cn "放上来有解释在这")  
#### 尖括号以形成链接
<http://bing.com.cn>  
<fake@example.com>
#### 带格式化的链接
**[Markdown官方教程](http://markdown.com.cn "放上来有解释在这")**  
*[Markdown官方教程](http://markdown.com.cn "放上来有解释在这")*  
[`Markdown官方教程`](http://markdown.com.cn "放上来有解释在这")  
#### 引用类型链接
这是[hobbit-hole][1]的第一部分  

第二部分可以放在任意位置  

[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle
[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit lifestyles"
[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle 'Hobbit lifestyles'
[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle (Hobbit lifestyles)
[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> "Hobbit lifestyles"
[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> 'Hobbit lifestyles'
[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> (Hobbit lifestyles)

v
### 转义字符
"\"   
&copy  
AT&T

### html
this <em>word</em> is italic.  
在字体颜色大小方面HTML更灵活

在HTML区块中markdown语法不会被识别

### 表格
| 列1   | 列2   |
| -----:   | :---:   |
| 对齐  | ':' 来决定对齐方式  |
| 表格大小  | 根据总体最长的那一部分  |
| 格式化    | 可以使用如**加粗**    |Here is a simole footnote,[^1] and here is a longer one.[^bignote]
[^1]: This is the first footnote.
[^bignote]: Here's one with multiple paragraphs and codes.  
    Indent paragraphs to include them in the footnote.  
    `{my code}`  
    Add as many paragraphs as you like.  


### 围栏代码块
通过~~~或```实现
可通过增加语言名称高亮
~~~json
{
    "firstname": "John",
    "lastname": "Smith"
}
~~~

### 脚注

Here is a simole footnote,[^1] and here is a longer one.[^bignote]  
[^1]: This is the first footnote.  
[^bignote]: Here's one with multiple paragraphs and codes.  
    Indent paragraphs to include them in the footnote.  
    `{my code}`  
    Add as many paragraphs as you like.  

### 标题编号 {#number}



### 定义列表

first
: one

second
: one
: two

### 删除线

要删除~~正确的部分~~错误的部分

### 任务列表

- [x] mission
- [x] task
- [ ] TODO
### Emoji

好笑 :joy:

### 自动网址链接

有些处理器自动将 url转换为链接  
http://baidu.com  
很明显,vscode是其中之一.

### 图片
将图片文本放在方括号内 ,并在后面添加括号
![Alt text](pic/Base%20Profile%20Screenshot%202023.10.20%20-%2017.31.56.100.png "Minecraft!")

