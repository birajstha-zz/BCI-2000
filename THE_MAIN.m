
clear all;
clc;

tic

datadir='D:\Motor Imagery Dataset\';
load('D:\myfiles\data\vars','G','H');

%%% Real hand movements Delta %%%

recording=[3 7 11];
pass_band=[0 4];
filename=('PLV_Real_hands_Delta');

%%% Real hand movements Theta %%%

recording=[3 7 11];
pass_band=[4 8];
filename=('PLV_Real_hands_Theta');

%%% Real hand movements Alpha %%%

recording=[3 7 11];
pass_band=[8 14];
filename=('PLV_Real_hands_Alpha');

%%% Real hand movements Beta %%%

recording=[3 7 11];
pass_band=[14 40];
filename=('PLV_Real_hands_Beta');

%%% Real hand movements Gamma %%%

recording=[3 7 11];
pass_band=[40 55];
filename=('PLV_Real_hands_Gamma');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Imaginary hand movements Delta%%%

recording=[4 8 12];
pass_band=[0 4];
filename=('PLV_Imaginary_hands_Delta');

%%% Imaginary hand movements Theta%%%

recording=[4 8 12];
pass_band=[4 8];
filename=('PLV_Imaginary_hands_Theta');

%%% Imaginary hand movements Alpha%%%

recording=[4 8 12];
pass_band=[8 14];
filename=('PLV_Imaginary_hands_Alpha');

%%% Imaginary hand movements Beta%%%

recording=[4 8 12];
passband=[14 40];
filename=('PLV_Imaginary_hands_Beta');

%%% Imaginary hand movements Gamma%%%

recording=[4 8 12];
pass_band=[40 55];
filename=('PLV_Imaginary_hands_Gamma');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Real hands and feet Delta%%%

recording=[5 9 13];
pass_band=[0 4];
filename=('PLV_Real_hnf_Delta');

%%% Real hands and feet Theta%%%

recording=[5 9 13];
pass_band=[4 8];
filename=('PLV_Real_hnf_Theta');

%%% Real hands and feet Alpha%%%

recording=[5 9 13];
pass_band=[8 14];
filename=('PLV_Real_hnf_Alpha');

%%% Real hands and feet Beta%%%

recording=[5 9 13];
pass_band=[14 40];
filename=('PLV_Real_hnf_Beta');

%%% Real hands and feet Gamma%%%

recording=[5 9 13];
pass_band=[40 55];
filename=('PLV_Real_hnf_Gamma');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Imaginary hands and feet %%%

recording=[6 10 14];
pass_band=[];
filename=('PLV_Imaginary_hnf_Delta');

%%% Imaginary hands and feet %%%

recording=[6 10 14];
pass_band=[];
filename=('PLV_Imaginary_hnf_Theta');

%%% Imaginary hands and feet %%%

recording=[6 10 14];
pass_band=[];
filename=('PLV_Imaginary_hnf_Alpha');

%%% Imaginary hands and feet %%%

recording=[6 10 14];
pass_band=[];
filename=('PLV_Imaginary_hnf_Beta');

%%% Imaginary hands and feet %%%

recording=[6 10 14];
pass_band=[];
filename=('PLV_Imaginary_hnf_Gamma');

toc

