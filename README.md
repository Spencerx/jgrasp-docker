# jGRASP in Docker

At UW, we use jGRASP as the introductory IDE for CSE 142 / 143 (our introductory computer science courses).
I made this because I TA for these courses, and wanted to run jGRASP for my sections on my macOS laptop without installing JDK8 or jGRASP locally.

This Docker image is based off the official OpenJDK image for Java 8, and it seems to work well with jGRASP. I can't guarantee that it'll be flawless, since jGRASP is (as far as I know) designed with the Oracle JDK in mind.

## Instructions

  1. Install the latest version of [XQuartz](https://www.xquartz.org/)
  2. Download the latest jGRASP Linux zip file from [here](http://spider.eng.auburn.edu/user-cgi/grasp/grasp.pl?;dl=download_jgrasp.html)
  3. Ensure that your network interface is `en0` by running `ifconfig` and looking for the interface name that matches your network connection. If it's something else like `en1`, replace `en0` with the proper interface name in `run.sh`
  4. In another terminal window, run `open -a XQuartz`. Then, in Preferences, head to Security and make sure "Allow connections from network clients" is enabled
  4. In this directory, run `./run.sh`. This will build the Docker container and launch jGRASP.

