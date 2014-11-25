VideoHost - filesystem based personal video hosting
===================================================

You want to host your own videos online to share with friends. You don't want
to install a lot of dependancies, manage a database or install new modules on
your web server.

You do want to be able to add videos by dropping them into a file tree.

You want this.

Setting up
----------

A perlbrew setup is recommended!

    $ git clone https://github.com/EatMoreCode/video_host.git
    $ cd video_host
    $ perl Makefile.PL
    $ make
    $ make test
    $ make install


Running
-------

There are many ways to deploy Mojolicious apps. Suggested reading:
http://mojolicio.us/perldoc/Mojolicious/Guides/Cookbook#DEPLOYMENT

    $ cp lib/VideoHost/video_host.conf SOMEDIR/video_host.conf
    $ edit SOMEDIR/video_host.conf
    $ MOJO_CONFIG=SOMEDIR/video_host.conf hypnotoad `which video_host`

Open your browser and enjoy.

What? I don't want to install things! I just want to kick the tires!
--------------------------------------------------------------------

Gotcha. Try this:

    $ git clone https://github.com/EatMoreCode/video_host.git
    $ cd video_host
    $ morbo script/video_host --listen http://\*:2345

Hit `http://localhost:2345` and kick the tires (well, tire).

OK, how do I add videos?
------------------------

Under your `video_directory` path (in the config) you need to have:

* one directory per video (name is unimportant - make it meaningful to you)
* one video file inside that directory called `video.mp4`
* one metadata file called `metadata.txt`

The `metadata.txt` file should contain key: value pairs, thus:

    title: My lovely video!
    date: 2014-10-10

