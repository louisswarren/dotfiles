import subprocess
import json

def run(*cmdlist):
    return subprocess.run(cmdlist, stdout=subprocess.PIPE).stdout.decode()

def sensors_json():
    return json.loads(run('sensors', '-j'))

def get_gpu(j):
    return j['intel5500-pci-00a3']['temp1']['temp1_input']

def get_cpu(j):
    temps = []
    temps.append(j['coretemp-isa-0000']['Core 0']['temp2_input'])
    temps.append(j['coretemp-isa-0000']['Core 1']['temp3_input'])
    temps.append(j['coretemp-isa-0000']['Core 2']['temp4_input'])
    temps.append(j['coretemp-isa-0000']['Core 3']['temp5_input'])
    return max(temps)


class Py3status:
    def sensors(self):
        params = {}

        data = sensors_json()
        params = {
            'cpu': get_cpu(data),
            'gpu': get_gpu(data),
        }

        text_format = "{gpu:.0f}° / {cpu:.0f}°"

        return {
            'full_text': self.py3.safe_format(text_format, params),
            'cached_until': self.py3.time_in(seconds=5)
        }


if __name__ == '__main__':
    from py3status.module_test import module_test
    module_test(Py3status)
