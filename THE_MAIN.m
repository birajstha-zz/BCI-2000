
clear all;
clc;

tic

datadir='D:\Motor Imagery Dataset\';
load('D:\myfiles\data\vars','G','H');

%%% Real hand movements Delta %%%

recording=[3 7 11];
pass_band=[0.1 4];
filename=('PLV_Real_hands_Delta');
subject=1:109;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Real hand movements Theta %%%

recording=[3 7 11];
pass_band=[4 8];
filename=('PLV_Real_hands_Theta');
subject=1:10;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Real hand movements Alpha %%%

recording=[3 7 11];
pass_band=[8 14];
filename=('PLV_Real_hands_Alpha');
subject=1:109;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Real hand movements Beta %%%

recording=[3 7 11];
pass_band=[14 40];
filename=('PLV_Real_hands_Beta');
subject=1:109;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Real hand movements Gamma %%%

recording=[3 7 11];
pass_band=[40 55];
filename=('PLV_Real_hands_Gamma');
subject=1:109;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Imaginary hand movements Delta%%%

recording=[4 8 12];
pass_band=[0.1 4];
filename=('PLV_Imaginary_hands_Delta');
subject=1:109;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Imaginary hand movements Theta%%%

recording=[4 8 12];
pass_band=[4 8];
filename=('PLV_Imaginary_hands_Theta');
subject=1:10;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Imaginary hand movements Alpha%%%

recording=[4 8 12];
pass_band=[8 14];
filename=('PLV_Imaginary_hands_Alpha');
subject=1:109;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Imaginary hand movements Beta%%%

recording=[4 8 12];
pass_band=[14 40];
filename=('PLV_Imaginary_hands_Beta');
subject=1:109;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Imaginary hand movements Gamma%%%

recording=[4 8 12];
pass_band=[40 55];
filename=('PLV_Imaginary_hands_Gamma');
subject=1:109;
bad_subjects=[100 104];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Real hands and feet Delta%%%

recording=[5 9 13];
pass_band=[0.1 4];
filename=('PLV_Real_hnf_Delta');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Real hands and feet Theta%%%

recording=[5 9 13];
pass_band=[4 8];
filename=('PLV_Real_hnf_Theta');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Real hands and feet Alpha%%%

recording=[5 9 13];
pass_band=[8 14];
filename=('PLV_Real_hnf_Alpha');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Real hands and feet Beta%%%

recording=[5 9 13];
pass_band=[14 40];
filename=('PLV_Real_hnf_Beta');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Real hands and feet Gamma%%%

recording=[5 9 13];
pass_band=[40 55];
filename=('PLV_Real_hnf_Gamma');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Imaginary hands and feet Delta%%%

recording=[6 10 14];
pass_band=[0.1 4];
filename=('PLV_Imaginary_hnf_Delta');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Imaginary hands and feet Theta%%%

recording=[6 10 14];
pass_band=[4 8];
filename=('PLV_Imaginary_hnf_Theta');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Imaginary hands and feet Alpha%%%

recording=[6 10 14];
pass_band=[8 14];
filename=('PLV_Imaginary_hnf_Alpha');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Imaginary hands and feet Beta%%%

recording=[6 10 14];
pass_band=[14 40];
filename=('PLV_Imaginary_hnf_Beta');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

%%% Imaginary hands and feet Gamma%%%

recording=[6 10 14];
pass_band=[40 55];
filename=('PLV_Imaginary_hnf_Gamma');
subject=1:109;
bad_subjects=[100 106];
THE_CALL(datadir,G,H,recording,pass_band,subject,bad_subjects,filename);

toc

