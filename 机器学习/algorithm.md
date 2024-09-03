# 机器学习算法部分

- 机器学习分为监督学习、非监督学习和半监督学习


## 分类算法
**分类算法**是有监督学习

### 支持向量机（SVM）
**SVM算法**是监督学习，用于解决二分类&多分类问题。



## 聚类算法
**聚类算法**是无监督学习。
聚类算法有**Hierarchical Clustering（层次聚类）、Partitioning Clustering（分割聚类）、Density Based Clustering**

### Partitioning Clustering
主要目的是把数据聚成多个簇


#### K-means
主要定义：K：分为**K**个类，mean是一个数据集的**质心**，有k个所以是means。
原理：K-means算法通过迭代，将数据点划分到最近（欧式距离、余弦相似...）的类簇中心点（mean）代表的簇中。随后根据簇中数据点重新计算质点。不断重复。
重点：
- K的选择：经验、统计技巧、领域知识...
- 距离度量：欧氏距离（Euclidean distance），或根据项目需求选择。
- 质心：簇内数据点均值。
- 优化目标：最小化每个数据点到簇中心点距离之和。

[K-Means可视化网站](https://www.naftaliharris.com/blog/visualizing-k-means-clustering/)

<<<<<<< HEAD
#### K-Medoids（或称PAM（Partioning Around Medoids））
主要定义：Partioning：分割聚类算法，Medoids是**K-Medoids（K个簇的唯一中心点）**。
与K-Means的区别：K—Means算法不具备
=======

## 特征选择（Feature Selection）
特征选择作为特征工程的一部分，主要是去除不相关或冗余（**Irrelevant&Redundant**）的特征，防止产生影响.

### 过滤方法（Filter Method）
定义：利用统计学方法，**计算特征与目标变量之间的相关性**，评估特征的重要性，选择最佳特征子集。

#### 方差选择法（Variance Thresholding）
通过计算特征的方差选择特征，方差低于阈值（threshold）的往往不具备保留价值。
优点：简单、快速、适合大规模数据
缺点：只考虑特征的单变量分布，且有些特征虽小但重要。

#### 相关系数法（Pearson correlation）


#### 卡方检验（Chi-Square Test）


#### 互信息法（Mutual Information）


#### L1正则化（L1 Regularization）



### 包装方法（Wrapper Method）

>>>>>>> 0fe8b6c193fc132d53bdda3b57684f4ec2ca18d5
