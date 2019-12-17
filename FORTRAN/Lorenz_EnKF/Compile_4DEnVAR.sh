#! /bin/bash
gfortran -o Lorenz_4DEnVAR_Execute ./MODULES/*.F95  LORENZ_4DEnVAR.F95 ./functions/*.F90 -lblas -llapack 
#./Lorenz_EnKF_Execute
#rm Lorenz_EnKF_Execute


#python leer.py
