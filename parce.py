import bs4
import requests
import urllib3
import sqlite3
from progressbar import AnimatedMarker, Bar, BouncingBar, Counter, ETA, \
    AdaptiveETA, FileTransferSpeed, FormatLabel, Percentage, \
    ProgressBar, ReverseBar, RotatingMarker, \
    SimpleProgress, Timer


def main():
    use_proxy = False
    main_url = 'http://www.allitebooks.in'
    if use_proxy == True:
        proxy_list = '' # подставить используемое proxy
        proxy = {'http': 'http://' + proxy_list}
    max_count_concurrence = 10 # максимальное количество совпадений подряд для того чтобы закончить обработку
    while True:
        
    pass

if __name__ == '__main__':
    main()