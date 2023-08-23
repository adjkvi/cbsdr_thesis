%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Sovereign Debt Risk & Monetary Policy %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Alberto Dario %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Bachelor Thesis %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Sept 2023 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%% Execution & Graph-Plotting File %%%%%%%%%%%%%%%%%%%%%


%%%%%%
% Running the models
%%%%%%

clear all
close all

dynare thesis_risky noclearall nolog

dynare thesis_riskfree noclearall nolog

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%
% Subplots showing the IRFs for the two models separately
%%%%%%

% Setting the path to save the graphs

folder = '/Users/alberto/Desktop/BOCCONI/tesi/Figures';

% Risky Rate Targeting, Default risk shock
figure;

subplot(3,2,1)
plot(r_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(r_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('r_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,2)
plot(rf_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(rf_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('r^f_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,3)
plot(pi_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(pi_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('\pi_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,4)
plot(t_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(t_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('t_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,5)
plot(def_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(def_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('\delta_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,6)
plot(b_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(b_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('b_t')
legend('\phi = 0', '\phi = 0.2')

saveas(gcf, fullfile(folder, 'IRF_DEF_RISKY.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Risky Rate Targeting, Monetary shock
figure; 

subplot(3,2,1)
plot(r_irfrr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(r_irfrr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('r_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,2)
plot(rf_irfrr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(rf_irfrr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('r^f_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,3)
plot(pi_irfrr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(pi_irfrr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('\pi_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,4)
plot(t_irfrr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(t_irfrr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('t_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,5)
plot(def_irfrr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(def_irfrr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('\delta_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,6)
plot(b_irfrr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(b_irfrr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('b_t')
legend('\phi = 0', '\phi = 0.2')

saveas(gcf, fullfile(folder, 'IRF_MON_RISKY.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Risk-free Rate Targeting, Default risk shock
figure; 

subplot(3,2,1)
plot(r_irffd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(r_irffd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('r_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,2)
plot(rf_irffd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(rf_irffd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('r^f_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,3)
plot(pi_irffd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(pi_irffd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('\pi_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,4)
plot(t_irffd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(t_irffd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('t_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,5)
plot(def_irffd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(def_irffd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('\delta_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,6)
plot(b_irffd(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(b_irffd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('b_t')
legend('\phi = 0', '\phi = 0.2')

saveas(gcf, fullfile(folder, 'IRF_DEF_RFREE.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Risk-free Rate Targeting, Monetary shock
figure; 

subplot(3,2,1)
plot(r_irffr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(r_irffr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('r_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,2)
plot(rf_irffr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(rf_irffr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('r^f_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,3)
plot(pi_irffr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(pi_irffr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('\pi_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,4)
plot(t_irffr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(t_irffr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('t_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,5)
plot(def_irffr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(def_irffr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('\delta_t')
legend('\phi = 0', '\phi = 0.2')

subplot(3,2,6)
plot(b_irffr(:,1),'-b','Linewidth',1.5) % Phi = 0
hold on
plot(b_irffr(:,2),'-r','Linewidth',1.5) % Phi = 0.2
hold off
title('b_t')
legend('\phi = 0', '\phi = 0.2')

saveas(gcf, fullfile(folder, 'IRF_MON_RFREE.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%
% Comparison Plots
%%%%%%

% r_t, Default risk shock
figure;
plot(r_irfrd(:,1),'-*b','Linewidth',1.5)
hold on
plot(r_irfrd(:,2),'-+r','Linewidth',1.5)
hold on
plot(r_irffd(:,1),'-squareg','Linewidth',1.5)
hold on
plot(r_irffd(:,2),'--^k','Linewidth',1.5)
hold off
title('r_t')
legend('\phi = 0, r_t', '\phi = 0.2, r_t', ...
    '\phi = 0, r_t^f', '\phi = 0.2, r_t^f')

saveas(gcf, fullfile(folder, 'IRF_R_DEF_CROSS.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% r^f_t, Default risk shock
figure;
plot(rf_irfrd(:,1),'-*b','Linewidth',1.5)
hold on
plot(rf_irfrd(:,2),'-+r','Linewidth',1.5)
hold on
plot(rf_irffd(:,1),'-squareg','Linewidth',1.5)
hold on
plot(rf_irffd(:,2),'--^k','Linewidth',1.5)
hold off
title('r^f_t')
legend('\phi = 0, r_t', '\phi = 0.2, r_t', ...
    '\phi = 0, r_t^f', '\phi = 0.2, r_t^f')

saveas(gcf, fullfile(folder, 'IRF_RF_DEF_CROSS.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \pi_t, Default risk shock
figure;
plot(pi_irfrd(:,1),'-*b','Linewidth',1.5)
hold on
plot(pi_irfrd(:,2),'-+r','Linewidth',1.5)
hold on
plot(pi_irffd(:,1),'-squareg','Linewidth',1.5)
hold on
plot(pi_irffd(:,2),'--^k','Linewidth',1.5)
hold off
title('\pi_t')
legend('\phi = 0, r_t', '\phi = 0.2, r_t', ...
    '\phi = 0, r_t^f', '\phi = 0.2, r_t^f')

saveas(gcf, fullfile(folder, 'IRF_PI_DEF_CROSS.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% r_t, Monetary shock
figure;
plot(r_irfrr(:,1),'-*b','Linewidth',1.5)
hold on
plot(r_irfrr(:,2),'-+r','Linewidth',1.5)
hold on
plot(r_irffr(:,1),'-squareg','Linewidth',1.5)
hold on
plot(r_irffr(:,2),'--^k','Linewidth',1.5)
hold off
title('r_t')
legend('\phi = 0, r_t', '\phi = 0.2, r_t', ...
    '\phi = 0, r_t^f', '\phi = 0.2, r_t^f')

saveas(gcf, fullfile(folder, 'IRF_R_MON_CROSS.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% r^f_t, Monetary shock
figure;
plot(rf_irfrr(:,1),'-*b','Linewidth',1.5)
hold on
plot(rf_irfrr(:,2),'-+r','Linewidth',1.5)
hold on
plot(rf_irffr(:,1),'-squareg','Linewidth',1.5)
hold on
plot(rf_irffr(:,2),'--^k','Linewidth',1.5)
hold off
title('r^f_t')
legend('\phi = 0, r_t', '\phi = 0.2, r_t', ...
    '\phi = 0, r_t^f', '\phi = 0.2, r_t^f')

saveas(gcf, fullfile(folder, 'IRF_RF_MON_CROSS.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \pi_t, Monetary shock
figure;
plot(pi_irfrr(:,1),'-*b','Linewidth',1.5)
hold on
plot(pi_irfrr(:,2),'-+r','Linewidth',1.5)
hold on
plot(pi_irffr(:,1),'-squareg','Linewidth',1.5)
hold on
plot(pi_irffr(:,2),'--^k','Linewidth',1.5)
hold off
title('\pi_t')
legend('\phi = 0, r_t', '\phi = 0.2, r_t', ...
    '\phi = 0, r_t^f', '\phi = 0.2, r_t^f')

saveas(gcf, fullfile(folder, 'IRF_PI_MON_CROSS.png'))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%
% Appendix
%%%%%%%%%%

%dynare thesis_bll18 noclearall nolog

% Risky Rate Targeting, Default risk shock

%figure;

%subplot(3,2,1)
%plot(r_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
%hold on
%plot(r_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
%hold off
%title('r_t')
%legend('\phi = 0', '\phi = 0.2')

%subplot(3,2,2)
%plot(rf_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
%hold on
%plot(rf_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
%hold off
%title('r^f_t')
%legend('\phi = 0', '\phi = 0.2')

%subplot(3,2,3)
%plot(pi_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
%hold on
%plot(pi_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
%hold off
%title('\pi_t')
%legend('\phi = 0', '\phi = 0.2')

%subplot(3,2,4)
%plot(t_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
%hold on
%plot(t_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
%hold off
%title('t_t')
%legend('\phi = 0', '\phi = 0.2')

%subplot(3,2,5)
%plot(def_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
%hold on
%plot(def_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
%hold off
%title('\delta_t')
%legend('\phi = 0', '\phi = 0.2')

%subplot(3,2,6)
%plot(b_irfrd(:,1),'-b','Linewidth',1.5) % Phi = 0
%hold on
%plot(b_irfrd(:,2),'-r','Linewidth',1.5) % Phi = 0.2
%hold off
%title('b_t')
%legend('\phi = 0', '\phi = 0.2')

%saveas(gcf, fullfile(folder, 'IRF_DEF_RISKY.png'))



