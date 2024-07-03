步骤A：利用JAX-ReaxFF优化反应力场，详细介绍可参照JAX-ReaxFF原文：
各个文件介绍与运行方式：
Mo-S-armchair-new-results：优化后力场下armchair边的应力应变曲线结果
Mo-S-armchair-old-data：模型data文件
Mo-S-armchair-old-ff：拉伸的in文件
Mo-S-armchair-old-results：旧力场下armchair边的应力应变曲线结果
Mo-S-zigzag-new-results：新力场下zigazag边的应力应变曲线结果
Mo-S-zigzag-old-data：模型data文件
Mo-S-zigzag-old-ff：拉伸的in文件
Origin ReaxFF：原始优化前的ReaxFF力场
geo：JAX优化力场需要的构型文件
in.neb.hop1：轻推弹力带相变的in文件
sh: sh 该文件，即可优化，注意修改文件夹名
trainset.in：JAX优化力场需要的训练集
