SAVE="save/broad-news-test-trashhold_v2"
mkdir -p $SAVE 
CUDA_VISIBLE_DEVICES=1 $(which fairseq-train) data-bin/broad-news_trashhold \
    --clip-norm 0 --optimizer adam --lr 0.0005 \
    --batch-size 20 \
    --source-lang src.broad.txt \
    --target-lang tgt.news.txt\
    --validate-interval 3 \
    --save-interval 3 \
    --max-epoch 40 \
    --no-progress-bar \
    --log-interval 100 --min-lr '1e-09' --weight-decay 0.0001 \
    --criterion label_smoothed_cross_entropy --label-smoothing 0.1 \
    --lr-scheduler inverse_sqrt \
    --ddp-backend=no_c10d \
    --max-update 50000 --warmup-updates 4000 --warmup-init-lr '1e-07' \
    --adam-betas '(0.9, 0.98)' --keep-last-epochs 10 \
    -a lightconv_iwslt_de_en \
    --save-dir $SAVE \
    --skip-invalid-size-inputs-valid-test \
    --dropout 0.3 --attention-dropout 0.1 --weight-dropout 0.1 \
    --encoder-glu 0 --decoder-glu 0