function thetas = team119_choose_solution(allSolutions, thetasnow)
%% team119_choose_solution.m
%
% Chooses the best inverse kinematics solution from all of the
% solutions passed in.  This decision is based both on the
% characteristics of the PUMA 260 robot and on the robot's current
% configuration.
%
% This Matlab file provides the starter code for the solution choice
% function of Project 1 in MEAM 520 at the University of Pennsylvania.
% The original was written by Professor Katherine J. Kuchenbecker.
% Students will work in teams modify this code to create their own
% script. Post questions on the class's Piazza forum.
%
% The first input (allSolutions) is a matrix that contains the joint
% angles needed to place the PUMA's end-effector at the desired
% position and in the desired orientation. The first row is theta1,
% the second row is theta2, etc., so it has six rows.  The number of
% columns is the number of inverse kinematics solutions that were
% found; each column should contain a set of joint angles that place
% the robot's end-effector in the desired pose. These joint angles are
% specified in radians according to the order, zeroing, and sign
% conventions described in the documentation.  If the IK function
% could not find a solution to the inverse kinematics problem, it will
% pass back NaN (not a number) for all of the thetas.
%
%    allSolutions: IK solutions for all six joints, in radians
%
% The second input is a vector of the PUMA robot's current joint
% angles (thetasnow) in radians.  This information enables this
% function to choose the solution that is closest to the robot's
% current pose.
%
%     thetasnow: current values of theta1 through theta6, in radians
%
% Please change the name of this file and the function declaration on
% the first line above to include your team number rather than 100.


% You will need to update this function so it chooses intelligently
% from the provided solutions to choose the best one.
%
% There are several reasons why one solution might be better than the
% others, including how close it is to the robot's current
% configuration and whether it violates or obeys the robot's joint
% limits.
%
% Note that some of the PUMA's joints wrap around, while your
% solutions probably include angles only from -pi to pi or 0 to 2*pi.
% If a joint wraps around, there can be multiple ways for the robot to
% achieve the same IK solution (the given angle as well as the given
% angle plus or minus 2*pi*n). Be careful about this point.

% For now, just return the last column of allSolutions.

sol1 = true;
sol2 = true;
sol3 = true;
sol4 = true;


if (allSolutions(1) > (110*pi/180) || allSolutions(1) < (-180*pi/180))
    sol1 = false;
elseif (allSolutions(2) > (240*pi/180) || allSolutions(2) < (-75*pi/180))
    sol1 = false;
elseif (allSolutions(3) > (60*pi/180) || allSolutions(3) < (-235*pi/180))
    sol1 = false;
elseif (allSolutions(4) > (40*pi/180) || allSolutions(4) < (-580*pi/180))
    sol1 = false;
elseif (allSolutions(5) > (110*pi/180) || allSolutions(5) < (-120*pi/180))
    sol1 = false;
elseif (allSolutions(6) > (295*pi/180) || allSolutions(6) < (-215*pi/180))
    sol1 = false;
elseif (allSolutions(7) > (110*pi/180) || allSolutions(7) < (-180*pi/180))
    sol2 = false;
elseif (allSolutions(8) > (240*pi/180) || allSolutions(8) < (-75*pi/180))
    sol2 = false;
elseif (allSolutions(9) > (60*pi/180) || allSolutions(9) < (-235*pi/180))
    sol2 = false;
elseif (allSolutions(10) > (40*pi/180) || allSolutions(10) < (-580*pi/180))
    sol2 = false;
elseif (allSolutions(11) > (110*pi/180) || allSolutions(11) < (-120*pi/180))
    sol2 = false;
elseif (allSolutions(12) > (295*pi/180) || allSolutions(12) < (-215*pi/180))
    sol2 = false;
elseif (allSolutions(13) > (110*pi/180) || allSolutions(13) < (-180*pi/180))
    sol3 = false;
elseif (allSolutions(14) > (240*pi/180) || allSolutions(14) < (-75*pi/180))
    sol3 = false;
elseif (allSolutions(15) > (60*pi/180) || allSolutions(15) < (-235*pi/180))
    sol3 = false;
elseif (allSolutions(16) > (40*pi/180) || allSolutions(16) < (-580*pi/180))
    sol3 = false;
elseif (allSolutions(17) > (110*pi/180) || allSolutions(17) < (-120*pi/180))
    sol3 = false;
elseif (allSolutions(18) > (295*pi/180) || allSolutions(18) < (-215*pi/180))
    sol3 = false;
elseif (allSolutions(19) > (110*pi/180) || allSolutions(19) < (-180*pi/180))
    sol4 = false;
elseif (allSolutions(20) > (240*pi/180) || allSolutions(20) < (-75*pi/180))
    sol4 = false;
elseif (allSolutions(21) > (60*pi/180) || allSolutions(21) < (-235*pi/180))
    sol4 = false;
elseif (allSolutions(22) > (40*pi/180) || allSolutions(22) < (-580*pi/180))
    sol4 = false;
elseif (allSolutions(23) > (110*pi/180) || allSolutions(23) < (-120*pi/180))
    sol4 = false;
elseif (allSolutions(24) > (295*pi/180) || allSolutions(24) < (-215*pi/180))
    sol4 = false;        
end


if (sol4 == true)
thetas = allSolutions(:,4);
elseif (sol3 == true)
thetas = allSolutions(:,3);
elseif (sol2 == true)
thetas = allSolutions(:,2);
else
thetas = allSolutions(:,1);
end
