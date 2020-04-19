FROM nvidia/cudagl:10.2-base-ubuntu18.04

RUN rm /etc/apt/sources.list
COPY ./sources.list /etc/apt
RUN apt-get update
RUN apt-get install -y libc-bin binutils
RUN apt install -y python3.7 python3-pip

# install needed libs
RUN apt install -y libtbb-dev \
                    libjemalloc-dev \
                    libfftw3.3 \
                    libopenjp2-7 \
                    libpng16-16 \
                    libjpeg-turbo8 \
                    libtiff5 \
                    libfreetype6 \
                    libglew-dev \
                    libboost1.65-all-dev \
                    libllvm6.0

# copy blender built libs just under x86_64-linux-gnu without folder 
COPY ./lib/*/lib/* /usr/lib/x86_64-linux-gnu/

COPY ./lib1/libpython3.7m.so.1.0 /usr/lib/x86_64-linux-gnu/
COPY ./lib1/dist-packages/ /usr/local/lib/python3.7/dist-packages/


# not used of install python 3.7 from ppa
# ARG PYTHON=python3.7

# ENV LANG C.UTF-8

# RUN add-apt-repository ppa:deadsnakes/ppa && apt-get update && apt-get install -y ${PYTHON}

# RUN wget https://bootstrap.pypa.io/get-pip.py
# RUN ${PYTHON} get-pip.py
# RUN ln -sf /usr/bin/${PYTHON} /usr/local/bin/python3
# RUN ln -sf /usr/local/bin/pip /usr/local/bin/pip3

# RUN pip3 --no-cache-dir install --upgrade \
#     pip \
#     setuptools

# RUN ln -s $(which ${PYTHON}) /usr/local/bin/python

# ARG TF_PACKAGE=tensorflow-gpu==1.13.1
# RUN pip3 install --upgrade ${TF_PACKAGE}

CMD [ "/bin/bash" ]
