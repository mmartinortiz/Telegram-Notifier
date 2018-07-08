#!/bin/bash
telegram "The server '$(hostname)' is up. Current public ip: $(curl ipinfo.io/ip)"
