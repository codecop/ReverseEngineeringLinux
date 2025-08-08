# made by ChatGPT 5

# decoder.py
import struct
import sys
from random import Random

def rotr8(x, n):
    x &= 0xff
    return ((x >> n) | ((x << (8-n)) & 0xff)) & 0xff

if len(sys.argv) != 2:
    print("Usage: python decoder.py flag.enc")
    sys.exit(1)

with open(sys.argv[1], "rb") as f:
    header = f.read(4)
    if len(header) < 4:
        raise SystemExit("file too short")
    # Annahme: little-endian (typisch x86). Falls falsch: try struct.unpack(">I", header)[0]
    seconds = struct.unpack("<I", header)[0]
    data = f.read()

# Python's random.Random() implementiert nicht C-stdlib rand().
# Wir brauchen die C-Standard-RNG. Unter Linux glibc ist es linear congruential
# aber am einfachsten: Nachbauen mit derselben LCG wie bei deinem System.
# Falls du auf x86 glibc bist, rand() ist komplexer ? hier ein simpler Ansatz:
# Stattdessen: benutze ctypes und libc.rand via Python (nur auf Unix).
import ctypes
libc = ctypes.CDLL("libc.so.6")
libc.srand(ctypes.c_uint(seconds))

out = bytearray(len(data))
for i in range(len(data)):
    r1 = libc.rand() & 0xffffffff
    r2 = libc.rand() & 7
    b = rotr8(data[i], r2)
    out[i] = b ^ (r1 & 0xff)

open("flag.py-dec", "wb").write(out)
print("Wrote flag.py-dec")
