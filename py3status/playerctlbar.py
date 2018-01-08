# py3status module for playerctl

import re
import subprocess

# In the absence of a GVariant parser, do some rudimentary parsing.
# This certainly will fail for arbitrary valid input, and will accept some
# invalid input, but it is resilient enough in practice to not be worth
# improving until it causes a problem.

# Key value pairs from GVariant data
gvariant_re = r"'(?P<key>[\w:]+)': <(?P<value>.*?)>"
# Strings with potentially mismatched quote marks
string_re = r"('|\")(?P<value>.*)('|\")"
# First value in a list (must be a string)
first_list_re = r"\[('|\")(?P<value>.*?)('|\")(,|\]).*"

def run(*cmdlist):
    return subprocess.run(cmdlist, stdout=subprocess.PIPE).stdout.decode()

def get_status():
    status = run('playerctl', 'status')[:-1]
    if status in ('Playing', 'Paused'):
        return status
    return ''

def get_metadata():
    gvariant_data = run('playerctl', 'metadata')
    return dict(re.findall(gvariant_re, gvariant_data))

def try_extract(regex, metadata, key):
    try:
        return re.match(regex, metadata[key]).group('value')
    except Exception:
        return ''

def extract_title(metadata):
    return try_extract(string_re, metadata, 'xesam:title')

def extract_first_artist(metadata):
    return try_extract(first_list_re, metadata, 'xesam:artist')

class Py3status:
    def playerctlbar(self):
        params = {'status': get_status()}

        if params['status'] == 'Playing':
            metadata = get_metadata()
            params['title'] = extract_title(metadata)
            params['artist'] = extract_first_artist(metadata)

        text_format = "[[ {artist} /] {title} ]|[ {status} ]"
        return {
            'full_text': self.py3.safe_format(text_format, params),
            'cached_until': self.py3.time_in(seconds=1)
        }

    def on_click(self, event):
        if event['button'] == 1:
            run('playerctl', 'play-pause')


if __name__ == '__main__':
    from py3status.module_test import module_test
    module_test(Py3status)
