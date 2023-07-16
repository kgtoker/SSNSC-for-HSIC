# SSNSC-for-HSIC

This demo implements the method proposed in paper given below  [1];

[1] Kemal Gürkan Toker & Seniha Esen Yuksel (2022) Spectral-spatial nearest subspace classifier for hyperspectral image classification,
International Journal of Remote Sensing, 43:6, 2106-2133, DOI: 10.1080/01431161.2022.2055986

${x_{ij}}$ :  $j^{th}$ training sample from class $i$
$X_i$      :

The proposed method analyzes the closeness between two subspaces, where one subspace is the space spanned 
by the neighborhood of the test sample and the other subspace is the space spanned by the withinclass training samples. 
The proposed method is simple, parameter-free, easy to implement and has a closed-form solution. Canonical Correlation Analysis
(CCA) is used to measure the closeness between these two subspaces.  The maximum correlation $\rho_i$ between the maximally correlated 
vector pairs located within $Col(\mathbf{X_i})$ and $Col(\mathbf{Y})$, is computed for each class using canonical correlation analysis (CCA).
Then, the label is estimated as the class with maximum correlation.

The Figure shows the geometric interpretation of Proposed SSNSC method. 

![image](https://github.com/kgtoker/SSNSC-for-HSIC/assets/57569368/44091ff8-25d2-4bb6-a829-ca0980aa0aa5)

In Figure, 
Xi: Training samples belonging to the ith class, 
Y: Neighbouring pixels around the test pixel y,
Col(Xi): Column space of Xi,
Col(Y): Column space of Y

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

