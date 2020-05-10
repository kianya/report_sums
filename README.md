# Суммаризация комментариев игр
Report summarization for sport articles

# Data Preparation
Подготавливаем данные для обработки fairseq. Для этого бинаризуем входной датасет с помощью команды

``bash broad-news-preprocess.sh``

По умолчанию установлен трешхолд (20 упоминаний) для того чтобы сократить количество слов в словаре, тем не менее трешход может не понадобиться при доплнительной предоброботке датасета.

# Learning process
Суммаризация неочищенного датасета на стандартной модели lightconv_iwslt_de_en

``cd text_summarization``. 
``bash broad-news-sums-test.sh``
