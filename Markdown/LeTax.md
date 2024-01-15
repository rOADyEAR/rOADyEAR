
# LeTax 语法

>引自 [知乎-使用Markdown输出LaTex数学公式-李东bbsky](https://zhuanlan.zhihu.com/p/59412540)

## 希腊字母语法
$\Gamma$、$\iota$、$\sigma$、$\phi$、$\upsilon$、$\Pi$、$\Bbbk$、$\heartsuit$、$\int$、$\oint$

## 三角函数、对数、指数
$\tan$、$\sin$、$\cos$、$\lg$、$\arcsin$、$\arctan$、$\min$、$\max$、$\exp$、$\log$

## 运算符
$+$、$-$、$=$、$>$、$<$、$\times$、$\div$、$\equiv$、$\leq$、$\geq$、$\neq$

## 集合符号
$\cup$、$\cap$、$\in$、$\notin$、$\ni$、$\subset$、$\subseteq$、$\supset$、$\supseteq$、$\N$、$\Z$、$\R$、$\R$、$\infty$

## 内联输出与块状输出

前面我们在输出每个符号的时候，都用两个美元符号\$\$，这种方式就是内联，所谓内联就是我们可以把数学符号嵌入到文字段落里面，比如：
函数式：$f(x)=\frac{P(x)}{Q(x)}$

块状输出:
$$P(A) = \{S|S\subset A\}$$

## 简单的四则运算

我们先来看简单的四则运算怎么用Markdown Math编写，

$2x - 5y =  8$  
$3x + 9y =  -12$
$7x \times 2y \neq 3z$
注意这里的\times是乘号，\neq是不等于;

## 指数输出

Markdown Math的指数运算符是^;
$x^3+x^9+x^y$

## n次方根输出

\sqrt{}是开平方，注意数值使用大括号{}围住，而开n次方的语法是\sqrt[n]{}，n次方的n用中括号[]围住，我们来看下面的案例：

$\sqrt{3x-1}+\sqrt[5]{2y^5-4}$

## 求和输出

求和公式比较复杂，会涉及到上标和下标，在输出指数^时我们可以把它看成是上标，使用_来输出下标，我们来看具体案例：

$$\sum_{n=1}^\infty k$$

## 极限的输出

在我们了解了上下标的概念之后，输出极限就会使用到下标，

$$\lim\limits_{x \to \infty} \exp(-x) = 0$$

## 阶乘的输出

$$\frac{n!}{k!(n-k)!} = \binom{n}{k}$$


## 输出矩阵

使用\begin{matrix}和\end{matrix}围住即可输出矩阵，矩阵之间用$来空格，用\\来换行。

$$
  \begin{matrix}
   1 & 2 & 3 \\
   4 & 5 & 6 \\
   7 & 8 & 9
  \end{matrix} 
$$


## 复杂数学公式
分段函数的编写

分段函数是非常复杂的，这时候会用到LaTex的cases语法，用\begin{cases}和\end{cases}围住即可，中间则用\\来分段，具体我们来看下面的例子。

$$
X(m,n)=
\begin{cases}
x(n),\\
x(n-1),\\
x(n+1)
\end{cases}
$$


