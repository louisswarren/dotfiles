# py3status module for Spotify using playerctl

import re
import sys
import subprocess

# In the absence of a GVariant parser, do some rudimentary parsing.
# This certainly will fail for arbitrary valid input, and will accept some
# invalid input, but it is resilient enough in practice to not be worth
# improving until it causes a problem.

# Key value pairs from GVariant data
gvariant_re   = r"'(?P<key>[\w:]+)': <(?P<value>.*?)>"
# Strings with potentially mismatched quote marks
string_re     = r"('|\")(?P<value>.*)('|\")"
# First value in a list (must be a string)
first_list_re = r"\[('|\")(?P<value>.*?)('|\")(,|\]).*"

def run(*cmdlist):
    return subprocess.run(cmdlist, stdout=subprocess.PIPE).stdout.decode()

def get_status():
    return run('playerctl', 'status')[:-1]

def get_metadata():
    gvariant_data = run('playerctl', 'metadata')
    return dict(re.findall(gvariant_re, gvariant_data))

def get_value(metadata, key, regex):
    return re.match(regex, metadata[key]).group('value')


class Py3status:
    def spotbar(self):
        status = get_status()
        if status == 'Playing':
            metadata = get_metadata()
            title = get_value(metadata, 'xesam:title', string_re)
            artist = get_value(metadata, 'xesam:artist', first_list_re)
            full_text = ' {} - {} '.format(title, artist)
        elif status == 'Paused':
            full_text = ' Paused '
        else:
            full_text = ''
        return {
            'full_text': full_text,
            'cached_until': self.py3.time_in(seconds=1)
        }
