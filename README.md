# jGRASP in Docker

At UW, we use jGRASP as the introductory IDE for CSE 142 / 143 (our introductory computer science courses).
I made this because I TA for these courses, and wanted to run jGRASP for my sections on my macOS laptop without installing JDK8 or jGRASP locally.

This Docker image is based off the official OpenJDK image for Java 8, and it seems to work well with jGRASP. I can't guarantee that it'll be flawless, since jGRASP is (as far as I know) designed with the Oracle JDK in mind.

## Instructions

  1. Install the latest version of [XQuartz](https://www.xquartz.org/)
  2. Download the latest jGRASP Linux zip file from [here](http://spider.eng.auburn.edu/user-cgi/grasp/grasp.pl?;dl=download_jgrasp.html)
  3. Move the zip file to this directory and name it `jgrasp.zip`
  4. Ensure that your network interface is `en0` by running `ifconfig` and looking for the interface name that matches your network connection. If it's something else like `en1`, replace `en0` with the proper interface name in `run.sh`
  5. In another terminal window, run `open -a XQuartz`. Then, in Preferences, head to Security and make sure "Allow connections from network clients" is enabled
  6. In this directory, run `./run.sh`. This will build the Docker container and launch jGRASP.

## Use

Inside the container, the directory at `/home/jgrasp/src` will be a volume corresponding to the `inner_src` directory in this repository. jGRASP should otherwise compile and run things as normal.
