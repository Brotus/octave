disp(['tra: order ', num2str(determine_exactness_order([0,1],compute_weights([0,1])))]);
disp(['sim: order ', num2str(determine_exactness_order([0,1/2,1],compute_weights([0,1/2,1])))]);
disp(['3/8: order ', num2str(determine_exactness_order([0,1/3,2/3,1],compute_weights([0,1/3,2/3,1])))]);
disp(['mil: order ', num2str(determine_exactness_order([0,1/4,1/2,3/4,1],compute_weights([0,1/4,1/2,3/4,1])))]);
disp(['5th: order ', num2str(determine_exactness_order([0,1/5,2/5,3/5,4/5,1],compute_weights([0,1/5,2/5,3/5,4/5,1])))]);