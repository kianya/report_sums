fairseq-train data-bin/broad-news \
  -s src.broad.txt \
  -t tgt.news.txt \
  --user-dir /home/kianya/text_summarization/models/simple_lstm \
  --arch tutorial_simple_lstm \
  --encoder-dropout 0.2 --decoder-dropout 0.2 \
  --optimizer adam --lr 0.005 --lr-shrink 0.5 \
  --max-tokens 22000