# debug-www

This container was built to ve used as a debuging tool.
It has an `nc`-based www server and some tools for interactive usage:

- postgres client
- mysql/maiadb client
- strace
- nc
- jq

> Suggestions for new tools are very welcome.

Withou any argument it starts a really simple "http server" that always respondes with `200 OK` (see run.sh)
To start it, simply run:

    $ docker run -p 8080:8080 caruccio/debug-www
    + true
    + nc --listen 8080

Hit the server:

    $ curl http://127.1:8080
    Hello

To start a pod inside Openshift, run:

    $ oc run debug --image=caruccio/debug-www

Or to start an interactive Pod to use the installed tools:

    $ oc run debug -it --rm --image=caruccio/debug-www debug
    > mysql -h mysql -u user mydb
