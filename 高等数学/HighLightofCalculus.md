# Highlight Of Calculus 

## 1：Big Picture of Calculus

***微积分（Calculus）*** 是两个函数之间的关系

>莱布尼茨(Leibniz)发明了$\frac{dy}{dx}$的表示方法, 可认为是差值
>函数二:斜率函数,如Slope,Speed;使用$\frac{dy}{dx}$表示

引例1：函数二为常数，如速度不变的$s(t)$,与函数$f(t)$,此时只需要进行除法,也就是简单的arithmetic就可以得出函数之间的关系:$s=vt,s/t=v$.

微积分的应用:从一个函数求得另一个函数

引例2: 函数二不为常数,从函数一得函数二称为 ***微分学(Differential Calculus)*** ,如已知距离,求速度.
引例3:从函数二求函数一,过程叫 ***积分(Integration)*** ,称为 ***积分学(Integral Calculus)*** .

总结:
- 如直线的函数,并不需要特殊公式可以得到两函数得关系;但如变速运动,路程与速度之间的关系则需要公式计算.
- 从函数二得函数一还可以通过:函数二下的面积等于函数一的值.

## 2：Big Picture of Derivatives

引言:讨论如何从第一个函数得到第二个函数,借助上一节的$\frac{dy}{dx}$,即斜率,也即 ***导数(Derivative)*** .

- ***斜率(Slope)*** 的计算若使用如$x=1$到$x=2$,则成为了平均变化.
- 引入$\Delta x$以表示一小段距离,带入函数后得到$\Delta y$相除后得到 **小范围内的平均值** 
- 引入$dy/dx$来表示极小距离,此时"/"已不是除法的意思(0不能是分母),表示斜率
  (代表从代数到微积分)
> 可认为 $$\frac{dy}{dx} = \lim_{x\to 0}\frac{\Delta y}{\Delta x}$$

## 3：Max and Min and Second Derivative

- 定位极值点是一次导数的作用；定义极值点类型是二阶导数
- 一阶导数可称为Slope二阶导数可称为Bending,一个的正负代表增加减少变化,一个代表弯曲的变化
- $\frac{dy}{dx}$ 可写作$y'$,但两种含义分别来自Leibniz和Newton,各有含义
- $y''=0$的位置称为**拐点(Inflection Point)**
- $y'=0$的位置称为**驻点**

## 4:指数函数

引言:指数函数的引入无一例外要用到极限;且对于指数函数,有:$$\frac{dy}{dx}=y$$这也是最简单且重要的一阶微分方程

推导:通过函数导数等于自身的性质构造指数函数
1. $$y(x)= 1  $$(给出一个微分方程的起始点)$$\frac{dy}{dx}=1$$(导数等于自身)
2. $$y(x)= 1+x  $$(**根据导数判断应该增加一个x**)$$\frac{dy}{dx}=1+x$$(导数等于自身)
3. $$...$$
4. 得到最终的式子$$y(x)=1+x+\frac{1}{2}x^2+...+\frac{x^n}{n!}+...$$$$\frac{dy}{dx}=1+x+\frac{1}{2}x^2+...+\frac{x^{n-1}}{(n-1)!}+\frac{x^n}{n!}+...$$
5. 构建完毕咯,定义为$e^x$

重要性质:$e^x\times e^X=e^{x+X}$
证明:根据上面指数函数的定义,将两个指数函数展开,其乘积与$e^{x+X}$的展开相同,得证; 
> 展开时用到*二项式定理(Binomial Theorem)*来展开和的平方
> 比指数级数还要重要的级数:几何级数:$1+x+x^2+...+x^n+...$

当令$x=1$时,得$e=2.71828...$

> 另一种计算$e$的方式:
> 引入:银行利率,每年100%,或者每月$\frac{100}{12}$%,或每天$\frac{100}{365}$%,都小于e;
> 直到$\lim_{n\to \infty}(1+\frac{1}{N})^N=e$

## 5:Big Picture:Intergrals

- 从函数一获得函数二有公式方式；
- 实际方式是什么呢？

推导：$$\sum \Delta y=y_{last}-y_{first}$$$$\sum \frac{\Delta y}{\Delta x}\Delta x=y_{last}-y_{first}$$
$\frac{\Delta x}{\Delta y}$趋近极限时就是斜率函数,也就是函数二,积分就是通过函数二得函数一的方式;
令$\Delta x和\Delta y$趋近于0,被分的越来越细的斜率也就是函数二,当$\Delta x \to 0$,比值趋近于函数s(x);
求极限后求和符号不合适,引入$\int$符号

## 6:Limits and Continuous Functions

<img src="pic\Limits.png" height =300>

极限思想就在于那个可以更小的$ \epsilon $

- 几个Danger:如$x \to 0时,f(x)\to \infty 且g(x)\to \infty ,此时的f(x)-g(x)可能有多种情况$

- 当存在$\frac{0}{0} 型时$,根据图像,若函数在为0处有非无穷斜率,可使用***洛必达法则(L`Hospital Rule)***
- 洛必达法则是一种求极限的技巧
  >
  >因为$f(x)和g(x)$趋近0,$f(x)\to f(x + \Delta x)$
  >
  >$$L`Hospital_{x\to 0} \frac{f(x)}{g(x)}\to \frac{\Delta f}{\Delta g}$$
  $$L`Hospital_{x\to 0} \frac{f(x)}{g(x)}= \frac{\Delta f/\Delta x}{\Delta g/\Delta x}\to \frac{s}{t}(斜率之比)$$
  > 证明过程中运用***柯西中值定理***

当f(x)为$\sqrt{x} $时,不能在0处使用洛必达法则,引入下面的内容
#### 可导和连续
$f(x) = \sqrt{x} $的斜率函数在0处不存在值(即可导),和在0处连续。
连续的条件较低，因为连续最后可以趋于无穷大。
***连续***：
- 存在$f(x)\to f(a)当f\to a$,即,在a点存在一个确切的值,当x趋近于a,f(x)趋近于f(a);
- 或者说可以连续的画出来;
> 导数就是连续的斜率的计算, 从它的定义上看是这样的;
- 准确定义:(仍利用了**窄带($\epsilon$)和竖带($\delta$)**的概念) 对于任意的...,有...,使得$f(x)-f(a) < \epsilon$


## 7：$\sin x$和$\cos x$的导数

#### 弧度制
用弧度表示角度是一个更自然的解释,如可直接证明 $\sin \theta < \theta$

#### 导数
1. 先看在$\theta = 0$处的导数,通过证明
   - $\sin \theta < \theta$ (利用弧长)
   - $\tan \theta > \theta \space or \sin \theta < \theta \cos \theta $(利用面积)
2. 求所有点处的导数
   用导数的定义证明,利用三角函数的公式,以及$\cos x 在x=0$处的导数;
   $$\frac{\Delta \sin x}{\Delta x}=\frac{\sin (x+\Delta x)-\sin x}{\Delta x}=\sin x(\frac{\cos \Delta x -1}{\Delta x})+\cos x(\frac{\sin \Delta x}{\Delta x})$$
   $$\frac{\Delta \cos x}{\Delta x}同理$$


## 8:Product Rule & Quotient Rule

#### Product Rule ($p = f*g$)
*例*: 已知$x^2$和$x$的导数,可使用**Product Rule**求得$x^3$的导数;
  得: $$\frac{d}{dx}x^n=nx^{n-1}$$

*特殊情况*：当f=g，此时使用乘法法则得到:$$\frac{d}{dx}f^2=2f\frac{df}{dx}$$
得: $$\frac{d}{dx}(f(x))^n=nf(x)^{n-1}\frac{df}{dx}$$
称之为 **Power Rule**

关于乘法法则的解释：
<img src="pic\ProductRule.png" height =300>

#### Quotient Rule ($p=\frac{f}{g}$)

因为$p=\frac{f}{g} \to f= \frac{p}{g}$
运用乘法法则并替换掉p,可得除法法则$$g^2\frac{dp}{dx}=g\frac{df}{dx}-f\frac{dg}{dx}$$

- $x^{-N}$的导数可通过除法法则获得.
- $x^\pi的导数为x^{\pi-1}$

## 9: Chains f(g(x)) & the Chain Rule (复合函数和链式法则)

$$\frac{dz}{dx} = \frac{dz}{dy}\frac{dy}{dx}$$

#### 链式法则
1. 浅显的理解：根据一些例子，可以发现，直接对一个存在复合的函数求导，和对复合函数用链式法则求导结果一致；
2. 原理：$\frac{\Delta z}{\Delta x}=\frac{\Delta z}{\Delta y}\frac{\Delta y}{\Delta x}$ , 当 $\Delta x$ 不为0时, $\Delta y$ 不为零;利用微积分的极限思想,可得链式法则;

*例子*:$e^{-\frac{x^2}{2}}$,钟形曲线,对正态分布相当重要;
<img src="pic\BellShapeCurve.png" height =100>


## 10: Inverse Function(逆函数) & Logarithm(对数函数)

#### 反函数
$y = f(x)$ : x是 Input ,  y 是 Output
$x = f^{-1}(y)$ : 相反即可;
- Inverse Function 不允许函数上上下下,只能单调,否则;
- Inverse Function 与原图像的图像关于x=y对称;

#### 对数函数
自然函数: ln (Logarithm natural),是$e^x$的Inverse Function,写作log也没啥问题,这里的对数只讨论自然对数

性质:很多,懒得写;
- $\ln {x^n} = n \ln x$
- $\ln {x^y} = \ln x \times \ln y$
- $\frac{d(\ln y)}{dy} = \frac{1}{y}$


## 11: Derivatives of $\ln y$ & $\sin ^{-1}(y)$ 

#### $\ln y$导数的证明
很规范的$$e^{\ln y }= y$$求导得
$$e^{\ln y }\frac{d\ln y}{dy} = 1$$
得
$$\frac{d\ln y }{dy} = \frac{1}{y}$$

#### $\sin ^{-1}(y)$导数的证明

$\sin ^{-1}(y)$说明：这个角的$\sin$值为y,根据勾股定理


