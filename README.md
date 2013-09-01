Docker - Tor
====================

A [docker](http://docker.io) image for [tor](http://www.torproject.org).

This container is running a tor server in combination with a privoxy proxy.
You need docker installed, of course.

To run it:

    docker run -d -p 58118:8118 -p 59050:9050 frnksgr/tor

When the container is running you can connect your browser to

| http proxy    | localhost:58118 |
| https proxy   | localhost:58118 |
| ftp proxy     | localhost:58118 |
| socks-5 proxy | localhost:59050 |

You can use a browser plugin for proxy handling like
[SwitchySharp](http://goo.gl/rztqkI) if using chrome for example.

