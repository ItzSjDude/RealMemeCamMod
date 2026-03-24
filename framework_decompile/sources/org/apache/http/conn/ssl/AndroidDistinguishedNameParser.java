package org.apache.http.conn.ssl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.security.auth.x500.X500Principal;

@Deprecated
/* loaded from: classes5.dex */
final class AndroidDistinguishedNameParser {
    private int beg;
    private char[] chars;
    private int cur;
    private final String dn;
    private int end;
    private final int length;
    private int pos;

    public AndroidDistinguishedNameParser(X500Principal principal) {
        String name = principal.getName("RFC2253");
        this.dn = name;
        this.length = name.length();
    }

    private String nextAT() {
        int i;
        int i2;
        int i3;
        int i4;
        char c;
        int i5;
        int i6;
        char c2;
        char c3;
        while (true) {
            i = this.pos;
            i2 = this.length;
            if (i >= i2 || this.chars[i] != ' ') {
                break;
            }
            this.pos = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.beg = i;
        this.pos = i + 1;
        while (true) {
            i3 = this.pos;
            i4 = this.length;
            if (i3 >= i4 || (c3 = this.chars[i3]) == '=' || c3 == ' ') {
                break;
            }
            this.pos = i3 + 1;
        }
        if (i3 >= i4) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        this.end = i3;
        if (this.chars[i3] == ' ') {
            while (true) {
                i5 = this.pos;
                i6 = this.length;
                if (i5 >= i6 || (c2 = this.chars[i5]) == '=' || c2 != ' ') {
                    break;
                }
                this.pos = i5 + 1;
            }
            if (this.chars[i5] != '=' || i5 == i6) {
                throw new IllegalStateException("Unexpected end of DN: " + this.dn);
            }
        }
        this.pos++;
        while (true) {
            int i7 = this.pos;
            if (i7 >= this.length || this.chars[i7] != ' ') {
                break;
            }
            this.pos = i7 + 1;
        }
        int i8 = this.end;
        int i9 = this.beg;
        if (i8 - i9 > 4) {
            char[] cArr = this.chars;
            if (cArr[i9 + 3] == '.' && (((c = cArr[i9]) == 'O' || c == 'o') && ((cArr[i9 + 1] == 'I' || cArr[i9 + 1] == 'i') && (cArr[i9 + 2] == 'D' || cArr[i9 + 2] == 'd')))) {
                this.beg = i9 + 4;
            }
        }
        char[] cArr2 = this.chars;
        int i10 = this.beg;
        return new String(cArr2, i10, i8 - i10);
    }

    private String quotedAV() {
        int i = this.pos + 1;
        this.pos = i;
        this.beg = i;
        this.end = i;
        while (true) {
            int i2 = this.pos;
            if (i2 == this.length) {
                throw new IllegalStateException("Unexpected end of DN: " + this.dn);
            }
            char[] cArr = this.chars;
            char c = cArr[i2];
            if (c == '\"') {
                this.pos = i2 + 1;
                while (true) {
                    int i3 = this.pos;
                    if (i3 >= this.length || this.chars[i3] != ' ') {
                        break;
                    }
                    this.pos = i3 + 1;
                }
                char[] cArr2 = this.chars;
                int i4 = this.beg;
                return new String(cArr2, i4, this.end - i4);
            }
            if (c == '\\') {
                cArr[this.end] = getEscaped();
            } else {
                cArr[this.end] = c;
            }
            this.pos++;
            this.end++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        r5.end = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String hexAV() {
        /*
            r5 = this;
            int r0 = r5.pos
            int r1 = r0 + 4
            int r2 = r5.length
            java.lang.String r3 = "Unexpected end of DN: "
            if (r1 >= r2) goto L9c
            r5.beg = r0
            int r0 = r0 + 1
            r5.pos = r0
        L10:
            int r0 = r5.pos
            int r1 = r5.length
            if (r0 == r1) goto L54
            char[] r1 = r5.chars
            char r2 = r1[r0]
            r4 = 43
            if (r2 == r4) goto L54
            r4 = 44
            if (r2 == r4) goto L54
            r4 = 59
            if (r2 != r4) goto L27
            goto L54
        L27:
            r4 = 32
            if (r2 != r4) goto L42
            r5.end = r0
            int r0 = r0 + 1
            r5.pos = r0
        L31:
            int r0 = r5.pos
            int r1 = r5.length
            if (r0 >= r1) goto L57
            char[] r1 = r5.chars
            char r1 = r1[r0]
            if (r1 != r4) goto L57
            int r0 = r0 + 1
            r5.pos = r0
            goto L31
        L42:
            r4 = 65
            if (r2 < r4) goto L4f
            r4 = 70
            if (r2 > r4) goto L4f
            int r2 = r2 + 32
            char r2 = (char) r2
            r1[r0] = r2
        L4f:
            int r0 = r0 + 1
            r5.pos = r0
            goto L10
        L54:
            r5.end = r0
        L57:
            int r0 = r5.end
            int r1 = r5.beg
            int r0 = r0 - r1
            r2 = 5
            if (r0 < r2) goto L83
            r2 = r0 & 1
            if (r2 == 0) goto L83
            int r2 = r0 / 2
            byte[] r2 = new byte[r2]
            r3 = 0
            int r1 = r1 + 1
        L6a:
            int r4 = r2.length
            if (r3 >= r4) goto L79
            int r4 = r5.getByte(r1)
            byte r4 = (byte) r4
            r2[r3] = r4
            int r1 = r1 + 2
            int r3 = r3 + 1
            goto L6a
        L79:
            java.lang.String r1 = new java.lang.String
            char[] r3 = r5.chars
            int r4 = r5.beg
            r1.<init>(r3, r4, r0)
            return r1
        L83:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r5.dn
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L9c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r2 = r5.dn
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.conn.ssl.AndroidDistinguishedNameParser.hexAV():java.lang.String");
    }

    private String escapedAV() {
        int i;
        int i2;
        char c;
        int i3 = this.pos;
        this.beg = i3;
        this.end = i3;
        while (true) {
            int i4 = this.pos;
            if (i4 >= this.length) {
                char[] cArr = this.chars;
                int i5 = this.beg;
                return new String(cArr, i5, this.end - i5);
            }
            char[] cArr2 = this.chars;
            char c2 = cArr2[i4];
            switch (c2) {
                case ' ':
                    int i6 = this.end;
                    this.cur = i6;
                    this.pos = i4 + 1;
                    this.end = i6 + 1;
                    cArr2[i6] = ' ';
                    while (true) {
                        i = this.pos;
                        i2 = this.length;
                        if (i < i2) {
                            char[] cArr3 = this.chars;
                            if (cArr3[i] == ' ') {
                                int i7 = this.end;
                                this.end = i7 + 1;
                                cArr3[i7] = ' ';
                                this.pos = i + 1;
                            }
                        }
                    }
                    if (i != i2 && (c = this.chars[i]) != ',' && c != '+' && c != ';') {
                        break;
                    } else {
                        break;
                    }
                case '+':
                case ',':
                case ';':
                    int i8 = this.beg;
                    return new String(cArr2, i8, this.end - i8);
                case '\\':
                    int i9 = this.end;
                    this.end = i9 + 1;
                    cArr2[i9] = getEscaped();
                    this.pos++;
                    break;
                default:
                    int i10 = this.end;
                    this.end = i10 + 1;
                    cArr2[i10] = c2;
                    this.pos = i4 + 1;
                    break;
            }
        }
        char[] cArr4 = this.chars;
        int i11 = this.beg;
        return new String(cArr4, i11, this.cur - i11);
    }

    private char getEscaped() {
        int i = this.pos + 1;
        this.pos = i;
        if (i == this.length) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        char c = this.chars[i];
        switch (c) {
            case ' ':
            case '\"':
            case '#':
            case '%':
            case '*':
            case '+':
            case ',':
            case ';':
            case '<':
            case '=':
            case '>':
            case '\\':
            case '_':
                return c;
            default:
                return getUTF8();
        }
    }

    private char getUTF8() {
        int count;
        int res;
        int res2 = getByte(this.pos);
        this.pos++;
        if (res2 < 128) {
            return (char) res2;
        }
        if (res2 < 192 || res2 > 247) {
            return '?';
        }
        if (res2 <= 223) {
            count = 1;
            res = res2 & 31;
        } else if (res2 <= 239) {
            count = 2;
            res = res2 & 15;
        } else {
            count = 3;
            res = res2 & 7;
        }
        for (int i = 0; i < count; i++) {
            int i2 = this.pos + 1;
            this.pos = i2;
            if (i2 == this.length || this.chars[i2] != '\\') {
                return '?';
            }
            int i3 = i2 + 1;
            this.pos = i3;
            int b = getByte(i3);
            this.pos++;
            if ((b & 192) != 128) {
                return '?';
            }
            res = (res << 6) + (b & 63);
        }
        return (char) res;
    }

    private int getByte(int position) {
        int b1;
        int b2;
        if (position + 1 >= this.length) {
            throw new IllegalStateException("Malformed DN: " + this.dn);
        }
        char[] cArr = this.chars;
        char c = cArr[position];
        if (c >= '0' && c <= '9') {
            b1 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            b1 = c - 'W';
        } else if (c >= 'A' && c <= 'F') {
            b1 = c - '7';
        } else {
            throw new IllegalStateException("Malformed DN: " + this.dn);
        }
        char c2 = cArr[position + 1];
        if (c2 >= '0' && c2 <= '9') {
            b2 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            b2 = c2 - 'W';
        } else if (c2 >= 'A' && c2 <= 'F') {
            b2 = c2 - '7';
        } else {
            throw new IllegalStateException("Malformed DN: " + this.dn);
        }
        return (b1 << 4) + b2;
    }

    public String findMostSpecific(String attributeType) {
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.dn.toCharArray();
        String attType = nextAT();
        if (attType == null) {
            return null;
        }
        do {
            String attValue = "";
            int i = this.pos;
            if (i == this.length) {
                return null;
            }
            switch (this.chars[i]) {
                case '\"':
                    attValue = quotedAV();
                    break;
                case '#':
                    attValue = hexAV();
                    break;
                case '+':
                case ',':
                case ';':
                    break;
                default:
                    attValue = escapedAV();
                    break;
            }
            if (attributeType.equalsIgnoreCase(attType)) {
                return attValue;
            }
            int i2 = this.pos;
            if (i2 >= this.length) {
                return null;
            }
            char c = this.chars[i2];
            if (c != ',' && c != ';' && c != '+') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            this.pos = i2 + 1;
            attType = nextAT();
        } while (attType != null);
        throw new IllegalStateException("Malformed DN: " + this.dn);
    }

    public List<String> getAllMostSpecificFirst(String attributeType) {
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.dn.toCharArray();
        List<String> result = Collections.emptyList();
        String attType = nextAT();
        if (attType == null) {
            return result;
        }
        do {
            int i = this.pos;
            if (i < this.length) {
                String attValue = "";
                switch (this.chars[i]) {
                    case '\"':
                        attValue = quotedAV();
                        break;
                    case '#':
                        attValue = hexAV();
                        break;
                    case '+':
                    case ',':
                    case ';':
                        break;
                    default:
                        attValue = escapedAV();
                        break;
                }
                if (attributeType.equalsIgnoreCase(attType)) {
                    if (result.isEmpty()) {
                        result = new ArrayList();
                    }
                    result.add(attValue);
                }
                int i2 = this.pos;
                if (i2 < this.length) {
                    char c = this.chars[i2];
                    if (c != ',' && c != ';' && c != '+') {
                        throw new IllegalStateException("Malformed DN: " + this.dn);
                    }
                    this.pos = i2 + 1;
                    attType = nextAT();
                }
            }
            return result;
        } while (attType != null);
        throw new IllegalStateException("Malformed DN: " + this.dn);
    }
}
