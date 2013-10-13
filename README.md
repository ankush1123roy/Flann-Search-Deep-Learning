Flann-Search-Deep-Learning
==========================

Tracker using deep learning to learn the features to track. Uses flann1.6 library for the search method. Installation of flann miight be a bit tricky. Included in  README. If you are using this flann library please include the citation 

@misc{Muj11,
 author={Marius Muja},
 title={FLANN,  Fast Library for Approximate Nearest Neighbors},
 year={2011},
 note={\url{http://mloss.org/software/view/143/}}
}

Compilation of flann for Matlab on Ubuntu is as follows.
___________________________________________________________

STEP 1. CHECK FOR ENVIRONMENT PATHS
------------------------------------------

Check where your mex, mexext and matlab are located in the enviroment path

$ which mex
/usr/home/....

$ which mexext
/usr/home/...


if they are located in different places change the environment path by 

$ export PATH=/usr/local/......../$PATH

Here /usr/local/..... is the path that had both mex and mexext as well as matlab.
When this is done you are set. 



STEP 2. DELETE SOME GARBAGE FILES
----------------------------------------
$ find ./ -name '\._*' -delete



STEP 3. MAKE 
---------------------------------------

$ mkdir ./LatexOut
$ cmake -DLATEX_OUTPUT_PATH=./LatexOut/ ./
$ make


If these compile well you would have a nearest_neighbors.mexa64* file in flann-1.6.11-src/src/matlab
