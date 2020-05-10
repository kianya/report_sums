fairseq-preprocess \
--source-lang src.broad.txt \
--target-lang tgt.news.txt \
--trainpref data/origin_2500_300_clean_1/train \
--validpref data/origin_2500_300_clean_1/valid \
--testpref data/origin_2500_300_clean_1/test \
--joined-dictionary \
--destdir data-bin/broad-news \
--thresholdtgt 20 \
--thresholdsrc 20