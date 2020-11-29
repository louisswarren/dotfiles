# Display a note if the kernel has been updated

import re
import subprocess

def run(*cmdlist):
    return subprocess.run(cmdlist, stdout=subprocess.PIPE).stdout.decode()

def running_version():
    uname_revision = run('uname', '-r')
    return uname_revision.split('-')[0]

def installed_version():
    pacman_version = run('pacman', '-Q', 'linux').split()[-1]
    return pacman_version[:pacman_version.rfind('.')]

def diff_str(old, new):
    new_parts = new.split('.')
    for i, old_part in enumerate(old.split('.')):
        if old_part != new_parts[i]:
            return '.' + '.'.join(new_parts[i:])

class Py3status:
    color = '#FF0000'

    def kernelupdatebar(self):
        params = {}

        running = running_version()
        installed = installed_version()
        diff = diff_str(running, installed)

        if running != installed:
            params['diff'] = f'{running} → {diff}'

        text_format = "[\?color={} {{diff}}]".format(self.color)

        return {
            'full_text': self.py3.safe_format(text_format, params),
            'cached_until': self.py3.time_in(seconds=360)
        }


if __name__ == '__main__':
    from py3status.module_test import module_test
    module_test(Py3status)
