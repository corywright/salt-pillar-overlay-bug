#!/usr/bin/env python

import socket

def setenvironment():
    hostname_bits =  socket.getfqdn().split('.')
    if len(hostname_bits) > 1:
        dcbit = hostname_bits[1]
    else:
        dcbit = 'unknown'
    return {'dc': dcbit}


