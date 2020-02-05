FROM resin/rpi-raspbian:jessie

RUN apt-get -y update && apt-get -y install python git

RUN apt-get -y install \
  fvwm xterm xserver-xorg x11-apps \
  xfonts-base xfonts-75dpi xfonts-100dpi \
  tightvncserver

RUN apt-get -y install \
  python-tk \
  python-serial \
  python-numpy \
  python-imaging-tk \
  python-opencv \
  python-scipy \
  usbutils

RUN git clone https://github.com/vlachoudis/bCNC

RUN mkdir -p /root/.vnc && \
  chmod 700 /root/.vnc && \
  mkdir -p /root/.fvwm && \
  echo "DesktopSize 1x1" > /root/.fvwm/config

COPY entrypoint.sh entrypoint.sh
