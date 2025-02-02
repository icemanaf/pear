# Pear - WebRTC Toolkit for IoT/Embedded Device

![pear-ci](https://github.com/sepfy/pear/actions/workflows/pear-ci.yml/badge.svg)

Pear is a WebRTC SDK written in C. The SDK aims to integrate IoT/Embedded device with WebRTC applications.

<b>Notice: This project is a work in progress. Currently, only support streaming H264 video or OPUS audio to browser.</b>

### Dependencies

* [libsrtp](https://github.com/cisco/libsrtp)
* [libnice](https://github.com/libnice/libnice)
* [librtp](https://github.com/ireader/media-server)


### Getting Started

```
# sudo apt -y install libglib2.0-dev libssl-dev git cmake ninja-build
# sudo pip3 install meson
# git clone --recursive https://github.com/sepfy/pear
# ./build-third-party.sh
# mkdir cmake
# cd cmake
# cmake ..
# make
```

### Examples
- [Local file](https://github.com/sepfy/pear/tree/main/examples/local_file): Stream h264 file to browser and exchange SDP by copy and paste.
- [GStreamer](https://github.com/sepfy/pear/tree/main/examples/gstreamer): Stream v4l2 source to browser with GStreamer and exchange SDP by libevent HTTP server.
- [Recording](https://github.com/sepfy/pear/tree/main/examples/recording): Record your screen and save as a file.
- [Bidirection](https://github.com/sepfy/pear/tree/main/examples/bidirection): Record your screen and stream v4l2 source to browser
