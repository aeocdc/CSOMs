# CSOMs
FROM conda/miniconda3-centos7
MAINTAINER  yangyi@tib.cas.cn
RUN conda install jupyter
RUN pip install cameo
RUN mkdir /home/CSMOs/
COPY iJO1366.xml /home/CSMOs
COPY algorithm.ipynb /home/CSMOs
RUN /usr/local/bin/jupyter-notebook --ip=0.0.0.0 --no-browser --allow-root
