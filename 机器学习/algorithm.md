# 机器学习算法部分

- 机器学习分为监督学习、非监督学习和半监督学习


## 分类算法
**分类算法**是有监督学习

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

#### K-Medoids（或称PAM（Partioning Around Medoids））
主要定义：Partioning：分割聚类算法，Medoids是**K-Medoids（K个簇的唯一中心点）**。
与K-Means的区别：K—Means算法不具备