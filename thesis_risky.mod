%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% Sovereign Debt Risk & Monetary Policy %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% Alberto Dario %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% Bachelor Thesis %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Sept 2023 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% Model & Shocks File %%%%%%%%%%%%%%%%%%

%%%%
% Endogenous Variables
%%%%

var	
	r
	rf
	pi 
	def 
	b
	t
	edef
	er;



%%%%
% Exogenous Variables
%%%%

varexo	
	ur
	udef;



%%%%
% Model's Parameters
%%%%

parameters 
	beta
	gamma
	alpha
	ts
	bs
	phi
	rhodef
	rhor;

beta = 0.99;
gamma = 0.2;
alpha = 1.5;
bs = 1;
ts = bs*((1/beta)-1);
rhodef = 0.5;
rhor = 0.5;




%%%%
% Values of phi to iterate over
%%%%

phis = [0, 0.1];



%%%%
% Loop the model over phi values
%%%%

for phi_idx = 1:length(phis)
    phi = phis(phi_idx);

    model;

    % (1a) Fisher Equation Risky

    r = def(+1) + pi(+1);

    % (1b) Fisher Equation Riskfree

    rf = pi(+1);

    % (2) Fiscal Rule

    t = gamma*(bs/ts)*(b(-1));

    % (3) Monetary Rule

    r = (alpha/beta)*pi + er;

    % (4) Default Risk

    def = phi*(r(-1) + b(-1)) + edef;

    % (5) Government Budget Constraint

    b*bs + t*ts = (bs/beta)*(b(-1) + r(-1) - pi);

    % (6) edef process

    edef = rhodef*edef(-1) + udef;

    % (7) er process

    er = rhor*er(-1) + ur;

    end;

    initval;
    rf = 0;
    r = 0;
    pi = 0;
    def = 0;
    b = 0;
    t = 0;
    end;

    resid;

    steady;

    check;

    shocks;
    var udef = 0.1^2;
    var ur = 0.1^2;
    end;

    stoch_simul(order = 1,ar=0, irf = 50, nograph);

    pi_irfrd(:, phi_idx) = pi_udef; 
    r_irfrd(:, phi_idx) = r_udef;
    rf_irfrd(:, phi_idx) = rf_udef;
    t_irfrd(:, phi_idx) = t_udef;
    def_irfrd(:, phi_idx) = def_udef;
    b_irfrd(:, phi_idx) = b_udef;

    pi_irfrr(:, phi_idx) = pi_ur; 
    r_irfrr(:, phi_idx) = r_ur;
    rf_irfrr(:, phi_idx) = rf_ur;
    t_irfrr(:, phi_idx) = t_ur;
    def_irfrr(:, phi_idx) = def_ur;
    b_irfrr(:, phi_idx) = b_ur;


end;






