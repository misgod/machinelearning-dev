FROM continuumio/anaconda

MAINTAINER Sam Lee <misgod.tw@gmail.com>

# plot
RUN pip install seaborn

# Deep Learning
ENV TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
RUN pip install --ignore-installed $TF_BINARY_URL

RUN pip install --upgrade Theano

RUN pip install --upgrade keras


# Add runner script
COPY runner.sh /bin/runner.sh
RUN chmod +x /bin/runner.sh

# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888

WORKDIR /notebooks
VOLUME /notebooks

ENTRYPOINT ["/bin/runner.sh"]