# py3status module for playerctl

import subprocess

compose = lambda f: lambda g: lambda *a, **k: f(g(*a, **k))

def run(*cmdlist):
    return subprocess.run(cmdlist, stdout=subprocess.PIPE).stdout.decode()

def get_status():
    status = run('playerctl', 'status')[:-1]
    if status in ('Playing', 'Paused'):
        return status
    return ''

@compose(dict)
def get_metadata(players):
    if players:
        raw = run('playerctl', '-p', players, 'metadata')
    else:
        raw = run('playerctl', 'metadata')
    for line in raw.strip().split('\n'):
        print(line)
        components = line.split()
        yield components[1], ' '.join(components[2:])

def extract_title(metadata):
    return metadata.get('xesam:title', '')

def extract_artist(metadata):
    return metadata.get('xesam:artist', '')

class Py3status:
    players = ''

    def spotbar(self):
        params = {'status': get_status()}

        if params['status'] == 'Playing':
            metadata = get_metadata(self.players)
            params['title'] = extract_title(metadata)
            params['artist'] = extract_artist(metadata)

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
