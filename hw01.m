% Author: Alexis Abney / aha0013@auburn.edu
% Date: 2024-09-17
% Assignment Name: hw01

classdef hw01
    methods (Static)

        function p1()
            % This function only contains comments. Fill the following table. Do not write any code here.
            % :return: no returns

            % Write your result and explanation for each command here.
            % 
            % commands         |  results      | explanations
            % -----------------|---------------|-----------------------------------
            % eps              |   2.2204e-16  | smallest number added to 1 considering limitations of floating point precision                                               
            % realmax          |  1.7977e+308  | largest finite f-p number
            % realmin          |  2.2251e-308  | smallest finite f-p number
            % 1 + eps - 1      |   2.2204e-16  | idk, seems like 1-1 cancels
            %                  |               | out so see eps
            % 1 + eps/2 - 1    |       0       | eps/2 return is so small
            %                  |               | its negligible
            % realmin/1e10     |  2.2251e-318  | takes realmin and scales
            %                  |               |  it down further
            % realmin/1e16     |       0       | underflow
            % realmax*10       |      Inf      | overflow
        end

        function s_n = p2(n, choice)
            % This function computes the Archimedes' method for pi.
            % :param n: the number of sides of the polygon
            % :param choice: 1 or 2, the formula to use
            % :return: s_n, the approximation of pi using Archimedes' method.

            % Tabulate the error of |s_n - pi| for n = 0, 1, 2, ..., 15 and choice = 1 and 2.
            % for both choices of formulas.
            % n     | choice 1 | choice 2
            % ------|----------|----------
            % 0     |          | 3.1416
            % 1     |          | 3.1416
            % 2     |          | 3.1416
            % 3     |          | 3.1416
            % 4     |          | 3.1416
            % 5     |          | 3.1416
            % 6     |          | 3.1416
            % 7     |          | 3.1416
            % 8     |          | 3.1416
            % 9     |          | 3.1416
            % 10    |          | 3.1416
            % 11    |          | 3.1416
            % 12    |          | 3.1416
            % 13    |          | 3.1416
            % 14    |          | 3.1416
            % 15    |          | 3.1416

            % Explanation of the results (why there is a difference between the two choices):
            %
            %
            %
            %
            %
            %
            
            truepi = pi;
            p_n = 2;

            if choice == 1
              for i = 1:n
            p_n = sqrt(2 - sqrt(4 - p_n^2));
                s_n = inf; 
              end 
                
            elseif choice==2
               for i = 1:n
                   p_n = 2 * (1 + sqrt(1 - (p_n/2)^2))
                   s_n = p_n;
                s_n = inf; 
               end 
            else
                error('Choice must be 1 or 2.');
            end 
            error = abs(s_n - true_pi);
        end
        for n = 0:15
    [s_n1, error1] = p2(n, 1);
    [s_n2, error2] = p2(n, 2);
    fprintf('n = %d | Choice 1: %.4f | Error: %.4f | Choice 2: %.4f | Error: %.4f\n', ...
            n, s_n1, error1, s_n2, error2);
        end

           
       

        function s = p3(a)
            % This function computes the Kahan summation algorithm.
            % :param a: a vector of numbers
            % :return: summation of the vector a using Kahan summation algorithm
            
            s = inf; % Write your code here
        end

        function p4(a)
            % This function test the performance of Kahan summation algorithm against native sum.
            % :param a: a vector of numbers in double precision.
            % :return: no returns

            % Test this function with a = rand(n, 1) with various size n multiple times. 
            % Summarize your findings below.
            %
            % Findings:
            % if n=0, a=0
            % if n=1, a=0.8147
            % if n=15, a= 0.9058, 0.1270, 0.9134, and about 15 other values
            % a returns n number of values
            
            single_a = single(a); % Convert a to single precision
            s = hw01.p3(a); % Kahan sum of a under double precision (regarded as truth).

            single_Kahan_s = hw01.p3(single_a); % Kahan sum of single_a under single precision.
            single_naive_s = sum(single_a); % Naive sum of single_a under single precision.
   
            disp(['Error of naive sum under single precision: ', num2str(single_naive_s-s)]);
            disp(['Error of Kahan sum under single precision: ', num2str(single_Kahan_s-s)]);
        end

        function s = p5(a)
            % For 6630. 
            % This function computes summation of a vector using pairwise summation.
            % :param a: a vector of numbers
            % :return: the summation of the vector a using pairwise summation algorithm.

            % ! You may need to create a helper function if your code uses recursion.

            % Rewrite the p4 test function to test this summation method.
            % Summarize your findings below.
            %
            % Findings: 
            %
            %
            %
            %
            %


            s = inf; % Write your code here. 

        end