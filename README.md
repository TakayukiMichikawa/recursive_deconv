# recursive_deconv
Recursive deconvolution algorithm for spike inference from _in vivo_ fluorescence resonance energy transfer (FRET) signals obtained from cerebellar Purkinje cells


by Takayuki Michikawa, Sep 2021

Overview
--------
This project applies a recursive deconvolution algorithm for single-cell FRET signals obtained from cerebellar Purkinje cell dendrites to infer complex spikes. To reduce noise, FRET signals are pretreated with wavelet thresholding. Parameters for both wavelet thresholding and deconvolution are determined recursively to minimize the difference between the original FRET signals and the reconstructed signals. The reconstruction is performed with a kernel that reflects the time course of changes in FRET signals accompanied by a complex spike of each cell.

This code was tested only on the macOS platform using MATLAB version R2016b-R2019a.  

## Installation

Requirements: MATLAB with Statistics and Machine Learning, Parallel Computing, and Wavelet toolboxes.

Installation: After cloning the repo, add the folder to MATLAB path.

## Data format
FRET signal matrices should be stored in a  `.mat` file, under the variable name `cell_sig`. `cell_sig` needs to be number of cells and number of frames. The temporal resolution (second per frame) should be stored in the variable name `dt`. The sample data contains 7,200 frames of 50 cells acquired at 30 Hz.


## Running recursive_deconv - An example
1. Run recursive_deconv_demo.m

This script automatically perform inference of complex spikes from single-cell FRET signals with optimality conditions for both wavelet thresholding and deconvolution. The  estimated parameters for wavelet thresholding, spike inference, and the distribution of the mean firing rate are stored in `.jpg` files. The results of spike inference are stored under the variable name `spike.spike_time_sec`.

## Reference
* Michikawa\*, T., Yoshida, T., Kuroki, S., Ishikawa, T., Kakei, S., Kimizuka, R., Saito, A., Yokota, H., Shimizu, A., Itohara, S., and Miyawaki, A. Distributed sensory coding by cerebellar complex spikes in units of cortical segments
