# setscreenres

This is a simple app to switch resolutions on retina macbook.

I did not want to run an untrusted binary resolution switcher like SwitchResX or SetResX, so I picked up the source code at http://hints.macworld.com/article.php?story=20090413120929454, and added a shell wrapper with pre-defined resolutions for simplified commandline switching).

The usage is pretty simple: build* the project, deploy it to /usr/local/bin, and then run res.sh -h to switch to hi-res, res.sh -m to switch to medium, and res.sh -l to switch to low resolution.

* building the project is also very simple - either compile it in xcode, or use the command line compiler: c++ setscreenres.cpp -framework ApplicationServices -o setscreenres
