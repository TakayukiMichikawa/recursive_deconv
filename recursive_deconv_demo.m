%% spike detection (recursive deconvolution)

% 1. make instance
spike = recursive_deconv2();  

% 2. make an output directory
spike.make_output_directory(); 

% 3. wavelet parameters
spike.wavelet_params();

% 4. set parameters
spike.set_params(sample_data);

% 5. compute deltaR/R0
spike.make_delta_R_over_R0(sample_data);

% 6. denoising by stationary wavelet thresholding  % 01_wavelet
spike.stationary_wavelet_thresholding(sample_data);

% 7. make kernel
spike.plot_kernel = 1;
spike.make_kernel(sample_data);

% 8. spike detection  % 02_spike
spike.spike_detection(sample_data);

% 9. compute_mean_firing_rate  % 03_spike_rate
spike.compute_mean_firing_rate(sample_data);

% 10. save spike instance
spike = saveobj(spike);
save(['spike.mat'],'spike', '-v7.3');
