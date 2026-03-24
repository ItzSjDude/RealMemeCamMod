package com.android.internal.org.bouncycastle.asn1.x509;

/* loaded from: classes4.dex */
public class X509NameTokenizer {
    private StringBuffer buf;
    private int index;
    private char separator;
    private String value;

    public X509NameTokenizer(String oid) {
        this(oid, ',');
    }

    public X509NameTokenizer(String oid, char separator) {
        this.buf = new StringBuffer();
        this.value = oid;
        this.index = -1;
        this.separator = separator;
    }

    public boolean hasMoreTokens() {
        return this.index != this.value.length();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String nextToken() {
        /*
            r9 = this;
            int r0 = r9.index
            java.lang.String r1 = r9.value
            int r1 = r1.length()
            if (r0 != r1) goto Lc
            r0 = 0
            return r0
        Lc:
            int r0 = r9.index
            r1 = 1
            int r0 = r0 + r1
            r2 = 0
            r3 = 0
            java.lang.StringBuffer r4 = r9.buf
            r5 = 0
            r4.setLength(r5)
        L18:
            java.lang.String r4 = r9.value
            int r4 = r4.length()
            if (r0 == r4) goto L84
            java.lang.String r4 = r9.value
            char r4 = r4.charAt(r0)
            r6 = 34
            if (r4 != r6) goto L39
            if (r3 != 0) goto L32
            if (r2 != 0) goto L30
            r6 = r1
            goto L31
        L30:
            r6 = r5
        L31:
            r2 = r6
        L32:
            java.lang.StringBuffer r6 = r9.buf
            r6.append(r4)
            r3 = 0
            goto L80
        L39:
            if (r3 != 0) goto L7a
            if (r2 == 0) goto L3e
            goto L7a
        L3e:
            r6 = 92
            if (r4 != r6) goto L49
            java.lang.StringBuffer r6 = r9.buf
            r6.append(r4)
            r3 = 1
            goto L80
        L49:
            char r7 = r9.separator
            if (r4 != r7) goto L4e
            goto L84
        L4e:
            r7 = 35
            if (r4 != r7) goto L67
            java.lang.StringBuffer r7 = r9.buf
            int r8 = r7.length()
            int r8 = r8 - r1
            char r7 = r7.charAt(r8)
            r8 = 61
            if (r7 != r8) goto L67
            java.lang.StringBuffer r7 = r9.buf
            r7.append(r6)
            goto L74
        L67:
            r7 = 43
            if (r4 != r7) goto L74
            char r8 = r9.separator
            if (r8 == r7) goto L74
            java.lang.StringBuffer r7 = r9.buf
            r7.append(r6)
        L74:
            java.lang.StringBuffer r6 = r9.buf
            r6.append(r4)
            goto L80
        L7a:
            java.lang.StringBuffer r6 = r9.buf
            r6.append(r4)
            r3 = 0
        L80:
            int r0 = r0 + 1
            goto L18
        L84:
            r9.index = r0
            java.lang.StringBuffer r1 = r9.buf
            java.lang.String r1 = r1.toString()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.org.bouncycastle.asn1.x509.X509NameTokenizer.nextToken():java.lang.String");
    }
}
