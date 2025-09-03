# Use the official MindIE image as a base image
# Please refer: https://www.hiascend.com/developer/ascendhub/detail/af85b724a7e5469ebd7ea13c3439d48f
# May vary based on your NPU device

FROM swr.cn-south-1.myhuaweicloud.com/ascendhub/mindie:2.1.RC1-800I-A2-py311-openeuler24.03-lts

SHELL ["/bin/bash", "-c"]

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash

USER root:root

WORKDIR /app

COPY assets/comfyui/ComfyUI-master comfyui
COPY assets/whl whl

RUN pip install --no-index --find-links=whl -r comfyui/requirements.txt && \
    rm -rf whl

COPY assets/init.sh .

EXPOSE 8188

CMD [ "/bin/bash", "init.sh" ]
