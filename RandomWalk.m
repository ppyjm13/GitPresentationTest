%% Author: Jamie Mair
% Random walk script to simulate a single random walk with parameters


walk_length = 20;
initial_x = 0;
initial_t = 0;
probability_up = 0.5;
probability_down = 0.5;
x = zeros(1, final_t-initial_t);
t = initial_t:final_t;
x(1) = initial_x;
for i=2:len(x)
    if rand < probability_up
       x(i) = x(i-1) + 1; 
    else
       x(i) = x(i-1) - 1; 
    end
end