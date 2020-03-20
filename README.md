# Physics Experiments and MATLAB scripts

This repo contains comprehensive data analyses of 4 physics experiments that I did at UC Berkeley. Raw experimental data, MATLAB scripts I wrote to analyze the data, and write-ups can be found for all four experiments in this repo. 

Below is a short summary on the experiments that were done and some of the data that was obtained and analyzed.


## Hall Effect in a Plasma

<img src="Hall_Effect_Plasma/lateximages/HallField.png" style="display:inline-block;" width="400" height="400"> <img src="Hall_Effect_Plasma/lateximages/averagevelocity.png" style="display:inline-block;" width="400" height="400">

* (LEFT) Hall Field EH as a function of applied magnetic field B for six different pressures. A linear relationship exists and is expected by Eq. (5). Another general trend that can be seen is at a given magnetic field, the Hall field is lower at higher pressures. This can be seen as the result of the increase in free electrons produced with higher pressures, resulting in lower Hall fields by Eq. (5). Error bars associated with reading errors were approximately ±50V. The reduced chi-squared value χ2 for the linear fits were 0.45, 0.30, 0.14, 0.44, 0.04, df and 0.30 for 15 torr, 18 torr, 21 torr, 24 torr, 27 torr, and 30 torr respectively.

* (RIGHT) Average Thermal Velocity <|v|><sub>e</sub> of Electrons as a function of Hall field E<sub>H</sub>. Average velocity increases with Hall field and at higher pressures (with constant Hall field), as expected by an increase in collision frequency.

The full write-up and more detailed analysis of this experiment can be found [here](https://github.com/brandonktran/Physics_Experiments_and_MATLAB_scripts/blob/master/Hall_Effect_Plasma/HAL_writeup.pdf).

## Gamma Ray Spectroscopy

<img src="Gamma_Ray_Spectroscopy/lateximages/4spectra.png" style="display:inline-block;" width="400" height="400"> <img src="Gamma_Ray_Spectroscopy/lateximages/Cs137attenuation.png" style="display:inline-block;" width="400" height="400">


* (LEFT) Energy Spectrum of <sup>60</sup>Co, <sup>137</sup>Cs, <sup>22</sup>Na, and <sup>54</sup>Mn. The energy axis was calibrated using known photopeak energy values. The photopeaks, backscatter peaks, and Compton edges can be seen in each spectrum.

* (RIGHT) Semilog plot in the y-axis of Intensity vs absorber thickness for each absorber. The linear attenuation coefficients of Cu, Al, and Pb were obtained for a 137Cs source using a straight line fit

The full write-up and more detailed analysis of this experiment can be found [here](https://github.com/brandonktran/Physics_Experiments_and_MATLAB_scripts/blob/master/Gamma_Ray_Spectroscopy/GMA_writeup.pdf).

## Optical Pumping

<img src="Optical_Pumping/lateximages/Rb85structure.png" style="display:inline-block;" width="400" height="400"> <img src="Optical_Pumping/lateximages/linear.png" style="display:inline-block;" width="400" height="400">

* (LEFT) Energy levels and splittings in <sup>85</sup>Rb.

* (RIGHT) Resonant RF frequencies as a function of the applied Helmholtz magnetic field BH for <sup>85</sup>Rb and <sup>87</sup>Rb.

The full write-up and more detailed analysis of this experiment can be found [here](https://github.com/brandonktran/Physics_Experiments_and_MATLAB_scripts/blob/master/Optical_Pumping/OPT_writeup.pdf).

## Rutherford Scattering

<img src="Rutherford_Scattering/atomicCalc.png" style="display:inline-block;" width="400" height="400"> <img src="Rutherford_Scattering/beamprof.png" style="display:inline-block;" width="400" height="400">

* (LEFT) Beam profile of Am<sup>241</sup> source.

* (RIGHT) Differential Cross Section vs Scattering Angle.

The presentation of the results and more detailed analysis of this experiment can be found [here](https://github.com/brandonktran/Physics_Experiments_and_MATLAB_scripts/blob/master/Rutherford_Scattering/RutherfordScattering_presentation.pptx).
