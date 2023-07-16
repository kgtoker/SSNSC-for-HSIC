# SSNSC-for-HSIC

This demo implements the method proposed in the paper given below  [1];

[1] Kemal Gürkan Toker & Seniha Esen Yuksel (2022) Spectral-spatial nearest subspace classifier for hyperspectral image classification,
International Journal of Remote Sensing, 43:6, 2106-2133, DOI: 10.1080/01431161.2022.2055986

The proposed method analyzes the closeness between two subspaces, where one subspace is the space spanned 
by the neighbourhood of the test sample and the other subspace is the space spanned by the within-class training samples. 
The proposed method is simple, parameter-free, easy to implement and has a closed-form solution. Canonical Correlation Analysis
(CCA) is used to measure the closeness between these two subspaces.  

Let, 

$\{\rm{ }}\{C\}$  : number of classes

${x_{ij}}$ :  $j^{th}$ training sample from class $i$ 

$X_i$      : Training samples belonging to the $i^{th}$ class

$y$ : Test Sample

$Y$ : Neighbouring pixels around the test pixel $y$

Col($X_i$): Column space of $X_i$ 

Col($Y$): Column space of $Y$



The Figure shows the geometric interpretation of the Proposed SSNSC method. 
![image](https://github.com/kgtoker/SSNSC-for-HSIC/assets/57569368/fd2b174b-eb60-4738-81cf-9336ef19789f)


In SSNSC, the maximum correlation ($\rho_i$) between the space spanned by the neighborhood of the test sample Col($Y$)  and space spanned by the within-class training samples
$Col(\mathbf{X_i})$  ${\forall _i}  \in {\rm{ }}\{ 1,2, ... ,C\}$ is computed separately. Then, the test sample is labelled as the class with the maximum correlation.
	(The red dot indicates the origin. The two origins are one point and the only one shared by the two planes.

More details in paper:

https://www.tandfonline.com/doi/full/10.1080/01431161.2022.2055986?scroll=top&needAccess=true&role=tab

If you find this work interesting in your research, please kindly cite:

@article{doi:10.1080/01431161.2022.2055986,
author = {Kemal Gürkan Toker and Seniha Esen Yuksel},
title = {Spectral-spatial nearest subspace classifier for hyperspectral image classification},
journal = {International Journal of Remote Sensing},
volume = {43},
number = {6},
pages = {2106-2133},
year  = {2022},
publisher = {Taylor & Francis},
doi = {10.1080/01431161.2022.2055986}}

If you would like to use other datasets, you can download them from 
http://www.ehu.eus/ccwintco/index.php/Hyperspectral_Remote_Sensing_Scenes

