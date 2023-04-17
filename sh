cd /common-data/kehanwang/JAX-ReaxFF-master/
jaxreaxff --init_FF Datasets/mos2/ffield_lit             \
          --params Datasets/mos2/params7               \
          --geo Datasets/mos2/geo                        \
          --train_file Datasets/mos2/trainset.in         \
          --num_e_minim_steps 200                          \
          --e_minim_LR 1e-3                                \
          --out_folder ffields                             \
          --save_opt all                                   \
          --num_trials 1                                   \
          --num_steps 20                                   \
          --init_FF_type fixed                             \
          --backend cpu
