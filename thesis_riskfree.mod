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


% Values of phi to iterate over
phis = [0, 0.1];

% Loop over phi values
for phi_idx = 1:length(phis)
    phi = phis(phi_idx);

    model;

    % (1a) Fisher Equation Risk-Free

    rf = pi(+1);

    % (1b) Fisher Equation Risky

    r = def(+1) + pi(+1);

    % (2) Fiscal Rule

    t = gamma*(bs/ts)*(b(-1));

    % (3) Monetary Rule

    rf = (alpha/beta)*pi + er;

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
    r = 0;
    rf = 0;
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

    pi_irffd(:, phi_idx) = pi_udef; 
    r_irffd(:, phi_idx) = r_udef;
    rf_irffd(:, phi_idx) = rf_udef;
    t_irffd(:, phi_idx) = t_udef;
    def_irffd(:, phi_idx) = def_udef;
    b_irffd(:, phi_idx) = b_udef;

    pi_irffr(:, phi_idx) = pi_ur; 
    r_irffr(:, phi_idx) = r_ur;
    rf_irffr(:, phi_idx) = rf_ur;
    t_irffr(:, phi_idx) = t_ur;
    def_irffr(:, phi_idx) = def_ur;
    b_irffr(:, phi_idx) = b_ur;

end;
