from time import strftime, time

uc_weeks = {
        (2018, 17): ('T2-1', 6),
        (2018, 18): ('T2-2', 6),
        (2018, 19): ('T2-3', 6),
        (2018, 20): ('T2-4', 6),
        (2018, 21): ('T2-5', 6),
        (2018, 22): ('T2-6', 6),
        (2018, 23): ('S1ST', 1),
        (2018, 24): ('S1EX-1', 2),
        (2018, 25): ('S1EX-2', 2),
        (2018, 26): ('MYB-1', 3),
        (2018, 27): ('MYB-2', 3),
        (2018, 28): ('MYB-3', 3),
        (2018, 29): ('T3-1', 6),
        (2018, 30): ('T3-2', 6),
        (2018, 31): ('T3-3', 6),
        (2018, 32): ('T3-4', 6),
        (2018, 33): ('T3-5', 6),
        (2018, 34): ('T3-6', 6),
        (2018, 35): ('S2B-1', 2),
        (2018, 36): ('S2B-2', 2),
        (2018, 37): ('T4-1', 6),
        (2018, 38): ('T4-2', 6),
        (2018, 39): ('T4-3', 6),
        (2018, 40): ('T4-4', 6),
        (2018, 41): ('T4-5', 6),
        (2018, 42): ('T4-6', 6),
        (2018, 43): ('S2ST', 1),
        (2018, 44): ('S2EX-1', 3),
        (2018, 45): ('S2EX-2', 3),
        (2018, 46): ('S2EX-3', 3),
}

class Py3status:
    format = '{}'
    interval = 1
    show_frac = False

    def uctime(self):
        yearno, weekno = map(int, strftime("%Y %V").split())
        week, frac = uc_weeks[yearno, weekno]
        if self.show_frac:
            week += '/' + str(frac)
        return {
            'full_text': self.py3.safe_format(self.format, {'': week}),
            'cached_until': self.py3.time_in(self.interval),
        }

    def on_click(self, event):
        if event['button'] == 1:
            self.show_frac = not self.show_frac

if __name__ == '__main__':
    from py3status.module_test import module_test
    module_test(Py3status)
