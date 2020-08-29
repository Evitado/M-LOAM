# !/bin/bash

# ours
roslaunch mloam mloam_simu_jackal.launch \
    run_mloam:=true \
    run_mloam_mapping:=true \
    result_save:=true \
    bag_file:=$data_path \
    output_path:=$result_path
sleep 1

# without uncertainty-aware
roslaunch mloam mloam_simu_jackal.launch \
    run_mloam:=true \
    with_ua:=false \
    result_save:=true \
    bag_file:=$data_path \
    output_path:=$result_path
sleep 1

# different LiDAR SLAM
roslaunch mloam mloam_simu_jackal.launch \
    run_mloam:=false \
    run_aloam:=true \
    bag_file:=$data_path \
    output_path:=$result_path
sleep 1

roslaunch mloam mloam_simu_jackal.launch \
    run_mloam:=false \
    run_floam:=true \
    bag_file:=$data_path \
    output_path:=$result_path
sleep 1

