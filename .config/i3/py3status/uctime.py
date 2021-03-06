from time import strftime, time

uc_weeks = {
        (2019,  1): ('SUM-1', 7),
        (2019,  2): ('SUM-2', 7),
        (2019,  3): ('SUM-3', 7),
        (2019,  4): ('SUM-4', 7),
        (2019,  5): ('SUM-5', 7),
        (2019,  6): ('SUM-6', 7),
        (2019,  7): ('SUM-7', 7),
        (2019,  8): ('T1-1', 7),
        (2019,  9): ('T1-2', 7),
        (2019, 10): ('T1-3', 7),
        (2019, 11): ('T1-4', 7),
        (2019, 12): ('T1-5', 7),
        (2019, 13): ('T1-6', 7),
        (2019, 14): ('T1-7', 7),
        (2019, 15): ('S1B-1', 3),
        (2019, 16): ('S1B-2', 3),
        (2019, 17): ('S1B-3', 3),
        (2019, 18): ('T2-1', 5),
        (2019, 19): ('T2-2', 5),
        (2019, 20): ('T2-3', 5),
        (2019, 21): ('T2-4', 5),
        (2019, 22): ('T2-5', 5),
        (2019, 23): ('S1ST', 1),
        (2019, 24): ('S1EX-1', 2),
        (2019, 25): ('S1EX-2', 2),
        (2019, 26): ('MYB-1', 3),
        (2019, 27): ('MYB-2', 3),
        (2019, 28): ('MYB-3', 3),
        (2019, 29): ('T3-1', 6),
        (2019, 30): ('T3-2', 6),
        (2019, 31): ('T3-3', 6),
        (2019, 32): ('T3-4', 6),
        (2019, 33): ('T3-5', 6),
        (2019, 34): ('T3-6', 6),
        (2019, 35): ('S2B-1', 2),
        (2019, 36): ('S2B-2', 2),
        (2019, 37): ('T4-1', 6),
        (2019, 38): ('T4-2', 6),
        (2019, 39): ('T4-3', 6),
        (2019, 40): ('T4-4', 6),
        (2019, 41): ('T4-5', 6),
        (2019, 42): ('T4-6', 6),
        (2019, 43): ('S2ST', 1),
        (2019, 44): ('S2EX-1', 2),
        (2019, 45): ('S2EX-2', 2),
        (2019, 46): ('SUM-1', 6),
        (2019, 47): ('SUM-2', 6),
        (2019, 48): ('SUM-3', 6),
        (2019, 49): ('SUM-4', 6),
        (2019, 50): ('SUM-5', 6),
        (2019, 51): ('SUM-6', 6),
        (2019, 52): ('XMAS', 1),
        (2019, 53): ('NEWYEAR', 1),
        (2020,  1): ('NEWYEAR', 1),
        (2020,  2): ('SUM-1', 4),
        (2020,  3): ('SUM-2', 4),
        (2020,  4): ('SUM-3', 4),
        (2020,  5): ('SUM-4', 4),
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
