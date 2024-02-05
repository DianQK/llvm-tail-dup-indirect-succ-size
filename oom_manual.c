int src();
int f1(unsigned int *b) {
#define SWITCH(in1, out1) \
  unsigned int out1;\
  switch (in1) {           \
    case 0: out1 = b[0] >> 0; break; \
    case 1: out1 = b[0] >> 1; break; \
    case 2: out1 = b[0] >> 2; break; \
    case 3: out1 = b[0] >> 3; break; \
    case 4: out1 = b[0] >> 4; break; \
    case 5: out1 = b[0] >> 5; break; \
    case 6: out1 = b[0] >> 6; break; \
    case 7: out1 = b[0] >> 7; break; \
    case 8: out1 = b[0] >> 8; break; \
    case 9: out1 = b[0] >> 9; break; \
    case 10: out1 = b[0] >> 10; break; \
    case 11: out1 = b[0] >> 11; break; \
    case 12: out1 = b[0] >> 12; break; \
    case 13: out1 = b[0] >> 13; break; \
    case 14: out1 = b[0] >> 14; break; \
    case 15: out1 = b[0] >> 15; break; \
    case 16: out1 = b[0] >> 16; break; \
    case 17: out1 = b[0] >> 17; break; \
    case 18: out1 = b[0] >> 18; break; \
    case 19: out1 = b[0] >> 19; break; \
    case 20: out1 = b[0] >> 20; break; \
    case 21: out1 = b[0] >> 21; break; \
    case 22: out1 = b[0] >> 22; break; \
    case 23: out1 = b[0] >> 23; break; \
    case 24: out1 = b[0] >> 24; break; \
    case 25: out1 = b[0] >> 25; break; \
    case 26: out1 = b[0] >> 26; break; \
    case 27: out1 = b[0] >> 27; break; \
    case 28: out1 = b[0] >> 28; break; \
    case 29: out1 = b[0] >> 29; break; \
    case 30: out1 = b[0] >> 30; break; \
    case 31: out1 = b[0] >> 31; break; \
    case 32: out1 = b[1] >> 0; break; \
    case 33: out1 = b[1] >> 1; break; \
    case 34: out1 = b[1] >> 2; break; \
    case 35: out1 = b[1] >> 3; break; \
    case 36: out1 = b[1] >> 4; break; \
    case 37: out1 = b[1] >> 5; break; \
    case 38: out1 = b[1] >> 6; break; \
    case 39: out1 = b[1] >> 7; break; \
    case 40: out1 = b[1] >> 8; break; \
    case 41: out1 = b[1] >> 9; break; \
    case 42: out1 = b[1] >> 10; break; \
    case 43: out1 = b[1] >> 11; break; \
    case 44: out1 = b[1] >> 12; break; \
    case 45: out1 = b[1] >> 13; break; \
    case 46: out1 = b[1] >> 14; break; \
    case 47: out1 = b[1] >> 15; break; \
    case 48: out1 = b[1] >> 16; break; \
    case 49: out1 = b[1] >> 17; break; \
    case 50: out1 = b[1] >> 18; break; \
    case 51: out1 = b[1] >> 19; break; \
    case 52: out1 = b[1] >> 20; break; \
    case 53: out1 = b[1] >> 21; break; \
    case 54: out1 = b[1] >> 22; break; \
    case 55: out1 = b[1] >> 23; break; \
    case 56: out1 = b[1] >> 24; break; \
    case 57: out1 = b[1] >> 25; break; \
    case 58: out1 = b[1] >> 26; break; \
    case 59: out1 = b[1] >> 27; break; \
    case 60: out1 = b[1] >> 28; break; \
    case 61: out1 = b[1] >> 29; break; \
    case 62: out1 = b[1] >> 30; break; \
    case 63: out1 = b[1] >> 31; break; \
    case 64: out1 = b[2] >> 0; break; \
    case 65: out1 = b[2] >> 1; break; \
    case 66: out1 = b[2] >> 2; break; \
    case 67: out1 = b[2] >> 3; break; \
    case 68: out1 = b[2] >> 4; break; \
    case 69: out1 = b[2] >> 5; break; \
    case 70: out1 = b[2] >> 6; break; \
    case 71: out1 = b[2] >> 7; break; \
    case 72: out1 = b[2] >> 8; break; \
    case 73: out1 = b[2] >> 9; break; \
    case 74: out1 = b[2] >> 10; break; \
    case 75: out1 = b[2] >> 11; break; \
    case 76: out1 = b[2] >> 12; break; \
    case 77: out1 = b[2] >> 13; break; \
    case 78: out1 = b[2] >> 14; break; \
    case 79: out1 = b[2] >> 15; break; \
    case 80: out1 = b[2] >> 16; break; \
    case 81: out1 = b[2] >> 17; break; \
    case 82: out1 = b[2] >> 18; break; \
    case 83: out1 = b[2] >> 19; break; \
    case 84: out1 = b[2] >> 20; break; \
    case 85: out1 = b[2] >> 21; break; \
    case 86: out1 = b[2] >> 22; break; \
    case 87: out1 = b[2] >> 23; break; \
    case 88: out1 = b[2] >> 24; break; \
    case 89: out1 = b[2] >> 25; break; \
    case 90: out1 = b[2] >> 26; break; \
    case 91: out1 = b[2] >> 27; break; \
    case 92: out1 = b[2] >> 28; break; \
    case 93: out1 = b[2] >> 29; break; \
    case 94: out1 = b[2] >> 30; break; \
    case 95: out1 = b[2] >> 31; break; \
    case 96: out1 = b[2] >> 0; break; \
    case 97: out1 = b[2] >> 1; break; \
    case 98: out1 = b[2] >> 2; break; \
    case 99: out1 = b[2] >> 3; break; \
    case 100: out1 = b[2] >> 4; break; \
    case 101: out1 = b[2] >> 5; break; \
    case 102: out1 = b[2] >> 6; break; \
    case 103: out1 = b[2] >> 7; break; \
    case 104: out1 = b[2] >> 8; break; \
    case 105: out1 = b[2] >> 9; break; \
    case 106: out1 = b[2] >> 10; break; \
    case 107: out1 = b[2] >> 11; break; \
    case 108: out1 = b[2] >> 12; break; \
    case 109: out1 = b[2] >> 13; break; \
    case 110: out1 = b[2] >> 14; break; \
    case 111: out1 = b[2] >> 15; break; \
    case 112: out1 = b[2] >> 16; break; \
    case 113: out1 = b[2] >> 17; break; \
    case 114: out1 = b[2] >> 18; break; \
    case 115: out1 = b[2] >> 19; break; \
    case 116: out1 = b[2] >> 20; break; \
    case 117: out1 = b[2] >> 21; break; \
    case 118: out1 = b[2] >> 22; break; \
    case 119: out1 = b[2] >> 23; break; \
    case 120: out1 = b[2] >> 24; break; \
    case 121: out1 = b[2] >> 25; break; \
    case 122: out1 = b[2] >> 26; break; \
    case 123: out1 = b[2] >> 27; break; \
    case 124: out1 = b[2] >> 28; break; \
    case 125: out1 = b[2] >> 29; break; \
    case 126: out1 = b[2] >> 30; break; \
    default:  out1 = b[2] >> 31; break; \
  }
  unsigned int r = src();
  SWITCH(r >> 1 & 0x7fU, v1);
  SWITCH(r >> 27 | (r << 5 & 0x60U), v2);
  SWITCH(r >> 2 & 0x7fu, v3);
  SWITCH(r >> 9 & 0x7fu, v4);
  SWITCH(r >> 16 & 0x7fu, v5);
  SWITCH(r >> 23 & 0x7fu, v6);
  SWITCH(r >> 30 | (r << 2 & 0x7fu), v7);
  SWITCH(r >> 7 & 0x7fu, v8);
  SWITCH(r >> 12 & 0x7fu, v9);
  SWITCH(r << 4 & 0x7fu, v10);
  SWITCH(r >> 10 & 0x7fu, v11);
  SWITCH(r >> 24 & 0x7fu, v12);
  SWITCH(r >> 31 | (r << 1 & 0x7eu), v13);
  SWITCH(r >> 6 & 0x7fu, v14);
  SWITCH(r >> 13 & 0x7fu, v15);
  SWITCH(r >> 20 & 0x7fu, v16);
  SWITCH(r >> 27 | (r << 5 & 0x60u), v17);
  SWITCH(r >> 3 & 0x7fu, v18);
  SWITCH(r >> 9 & 0x7fu, v19);
  SWITCH(r >> 16 & 0x7fu, v20);
  SWITCH(r >> 23 & 0x7fu, v21);
  SWITCH(r >> 30 | (r << 2 & 0x7cu), v22);
  SWITCH(r >> 7 & 0x7fu, v23);
  SWITCH(r >> 12 & 0x7fu, v24);
  SWITCH(r >> 14 & 0x7fu, v25);
  SWITCH(r >> 15 & 0x7fu, v26);
  return (v1 | v2 | v3 | v4 | v5 | v6 | v7 | v8 | v9 | v10 | v11 | v12 | v13 |
          v14 | v15 | v16 | v17 | v18 | v19 | v20 | v21 | v22 | v23 | v24 | v25 | v26);
}
