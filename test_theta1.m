results = zeros(1,10);
for i = [1:10]
    theta1 = rand() * 2 * pi;
    pose = puma_fk_kuchenbe(theta1,0,0,0,0,0);
    wrist_center = pose(:,5);
    ik = team119_puma_ik(wrist_center(1), wrist_center(2), wrist_center(3), 0, 0, 0);
    error = theta1 - mod(ik(1,1), 2*pi);
    results(i) = error;
end

results