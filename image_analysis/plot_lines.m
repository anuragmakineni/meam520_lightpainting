close all; hold on; load lander;
xlim([min(X), max(X)]);
ylim([min(Y), max(Y)]);
axis equal;
R = zeros(1,length(Type));
G = zeros(1,length(Type));
B = zeros(1,length(Type));

transitions = diff(Type);

Ye = [0.7053    0.7053    0.0719];
W = [1/3 1/3 1/3];
Bl = [0    0.3714    0.9285];
ratio = max(X)/max(Y);

height = 10; %in
z_c = 10;
y_c = 0;
x_c = 10;

colors = [Bl
Bl
Bl
Bl
Bl
Bl
Bl
Ye
Ye
W
W
W
W
W
W
W
W
W
W
Ye
Ye
Ye
Ye
Ye
Ye
Ye
Ye
W
Ye
Bl
Bl
Bl
Bl
Bl
Bl];

length(transitions(transitions==1))
last_i = 1;
k = 1;
for i = 1:length(Type)
    if Type(i) == 1
          R(i) = 1;colors(k, 1);
          G(i) = 1;colors(k, 2);
          B(i) = 1;colors(k, 3);
        if transitions(i-1) == 1
            plot(X(last_i:i), Y(last_i:i));
            last_i = i;
            k = k + 1;
            k = min(k, length(colors));
        end
    end
end

%normalize
y = height * (X/max(Y) - median(X/max(Y))) + y_c;
z = height * (Y/max(Y) - 0.5) + z_c;
close all; plot(y,z); axis equal;

painting = zeros(length(X), 10);
painting(:,1) = x_c;
painting(:,2) = y;
painting(:,3) = z;
painting(:,5) = pi/2;
painting(:,7) = R;
painting(:,8) = G;
painting(:,9) = B;

save('/Users/anuragmakineni/Documents/workspace/meam520_lightpainting/team119', 'painting');