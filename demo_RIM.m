% =========================================================================
% Demo_RIM.m
% Proposed RIM (Risk-region Intensity Mapping) Algorithm - Single Image Test
% =========================================================================

clear; clc; close all;

thresholdRatio = 5;   % 논문 실험 환경에 맞게 조절 (예: 1.0)
targetPSNR = 36;        % Target PSNR (dB)

inputPath = 'Images/Input/01.JPG';
enhancedPath = 'Images/Initial_enhanced/HE/01.png';

inputImg = im2double(imread(inputPath));
enhancedImg = im2double(imread(enhancedPath));

[~, outputEnhanced] = RIM(inputImg, enhancedImg, thresholdRatio, targetPSNR);

figure('Name', 'RIM Algorithm Results', 'Position', [100, 200, 1500, 500]);

subplot(1, 3, 1);
imshow(inputImg);
title('Original Input', 'FontSize', 14, 'FontWeight', 'bold');

subplot(1, 3, 2);
imshow(enhancedImg);
title('Initial Enhanced', 'FontSize', 14, 'FontWeight', 'bold');

subplot(1, 3, 3);
imshow(outputEnhanced);
title('Proposed RIM Output', 'FontSize', 14, 'FontWeight', 'bold');
