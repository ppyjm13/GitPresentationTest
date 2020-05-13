%% Author: Jamie Mair
% Random walk script to simulate a single random walk with parameters


initial_x = 0;
initial_t = 0;
final_t = 40;
probability_up = 0.75;
probability_down = 1.0 - probability_up;

x = zeros(1, final_t-initial_t+1);
t = initial_t:final_t;
x(1) = initial_x;
for i=2:length(x)
    if rand < probability_up
       x(i) = x(i-1) + 1; 
    else
       x(i) = x(i-1) - 1; 
    end
end


figure;
plot(t,x,'-k');
ylim([floor(min(x)*1.1-1), ceil(max(x)*1.1+1)]);
xlabel('t');
ylabel('x');