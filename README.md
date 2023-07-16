# SSNSC-for-HSIC

This demo implements the method proposed in the paper given below  [1];

[1] Kemal Gürkan Toker & Seniha Esen Yuksel (2022) Spectral-spatial nearest subspace classifier for hyperspectral image classification,
International Journal of Remote Sensing, 43:6, 2106-2133, DOI: 10.1080/01431161.2022.2055986

Spectral-spatial nearest subspace classifier (SSNSC) method is a kind of representation-based method. 
The SSNSC method is proposed, inspired by the geometric interpretation of the Nearest Subspace Classifier (NSC) method. NSC is a simple classifier
that works on the assumption that samples from the same class approximately lie on the same subspace. 
Based on this assumption, the NSC method analyzes the closeness between the test sample and the space spanned by the within-class training samples. 
Then, the label of the test sample is assigned to the closest class. However, NSC only considers spectral information and neglects spatial information.
In addition to the assumption in the NSC method, we add another assumption that spatially adjacent pixels quite likely belong to the same class.
By combining these two assumptions, we conclude that spatially adjacent pixels must approximately lie on the same subspace as well.
Based on these assumptions, we propose the spectral-spatial nearest subspace classification (SSNSC) approach as a generic classification framework
that performs classification by analyzing  the closeness between the subspace spanned by the samples used for spatial information and the subspace
spanned by the within-class training samples. (CCA) is used to measure the closeness between these two subspaces.  

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

