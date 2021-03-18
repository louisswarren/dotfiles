# py3status module for playerctl

import subprocess

def run(*cmdlist):
    return subprocess.run(
            cmdlist,
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL).stdout.decode()

def player_args(players):
    if not players:
        return 'playerctl',
    else:
        return 'playerctl', '-p', players

def get_status(players):
    status = run(*player_args(players), 'status')[:-1]
    if status in ('Playing', 'Paused'):
        return status
    return ''

def get_info(players, fmt):
    args = 'metadata', '--format', f'{fmt}'
    return run(*player_args(players), *args).strip()


class Py3status:
    players = ''
    format = '{{artist}} / {{title}}'
    len_limit = False
    title_max = 20
    artist_max = 20


    def spotbar(self):
        text_format = "[[{info}]]|[{status}]"

        params = {'status': get_status(self.players)}

        if params['status'] == 'Playing':
            params['info'] = get_info(self.players, self.format)
            if params['info'] == '/ -':
                params['info'] = None
            elif self.len_limit:
                artist, title = params['info'].split(' / ', 1)
                params['info'] = artist[:self.artist_max] + ' / ' + title[:self.title_max]

        return {
            'full_text': self.py3.safe_format(text_format, params),
            'cached_until': self.py3.time_in(seconds=1)
        }

    def on_click(self, event):
        if event['button'] == 1:
            run('playerctl', 'play-pause')
        elif event['button'] == 3:
            self.len_limit = not self.len_limit


if __name__ == '__main__':
    from py3status.module_test import module_test
    module_test(Py3status)
