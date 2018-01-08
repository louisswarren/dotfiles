# Display a note if the kernel has been updated

import re
import subprocess

def run(*cmdlist):
    return subprocess.run(cmdlist, stdout=subprocess.PIPE).stdout.decode()

def running_version():
    uname_result = run('uname', '-r')
    return re.match(r"([\d.-]+)-ARCH", uname_result).groups()[0]

def installed_version():
    search_result = run('pacman', '-Qs', '^linux$')
    return re.match(r"local/linux ([\d.-]+)", search_result).groups()[0]


class Py3status:
    color = '#FF0000'

    def kernelupdatebar(self):
        params = {}

        running = running_version()
        installed = installed_version()

        if running != installed:
            params['diff'] = f'{running} -> {installed}'

        text_format = "[\?color={} {{diff}} ]".format(self.color)

        return {
            'full_text': self.py3.safe_format(text_format, params),
            'cached_until': self.py3.time_in(seconds=60)
        }


if __name__ == '__main__':
    from py3status.module_test import module_test
    module_test(Py3status)
