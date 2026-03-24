package android.text;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.provider.UserDictionary;
import android.view.View;
import com.android.internal.R;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class AutoText {
    private static final int DEFAULT = 14337;
    private static final int INCREMENT = 1024;
    private static final int RIGHT = 9300;
    private static final int TRIE_C = 0;
    private static final int TRIE_CHILD = 2;
    private static final int TRIE_NEXT = 3;
    private static final char TRIE_NULL = 65535;
    private static final int TRIE_OFF = 1;
    private static final int TRIE_ROOT = 0;
    private static final int TRIE_SIZEOF = 4;
    private static AutoText sInstance = new AutoText(Resources.getSystem());
    private static Object sLock = new Object();
    private Locale mLocale;
    private int mSize;
    private String mText;
    private char[] mTrie;
    private char mTrieUsed;

    private AutoText(Resources resources) throws Resources.NotFoundException {
        this.mLocale = resources.getConfiguration().locale;
        init(resources);
    }

    private static AutoText getInstance(View view) {
        AutoText instance;
        Resources res = view.getContext().getResources();
        Locale locale = res.getConfiguration().locale;
        synchronized (sLock) {
            instance = sInstance;
            if (!locale.equals(instance.mLocale)) {
                instance = new AutoText(res);
                sInstance = instance;
            }
        }
        return instance;
    }

    public static String get(CharSequence src, int start, int end, View view) {
        return getInstance(view).lookup(src, start, end);
    }

    public static int getSize(View view) {
        return getInstance(view).getSize();
    }

    private int getSize() {
        return this.mSize;
    }

    private String lookup(CharSequence src, int start, int end) {
        char c = this.mTrie[0];
        for (int i = start; i < end; i++) {
            char c2 = src.charAt(i);
            while (true) {
                if (c == 65535) {
                    break;
                }
                char[] cArr = this.mTrie;
                if (c2 != cArr[c + 0]) {
                    c = cArr[c + 3];
                } else {
                    if (i == end - 1 && cArr[c + 1] != 65535) {
                        char c3 = cArr[c + 1];
                        int len = this.mText.charAt(c3);
                        return this.mText.substring(c3 + 1, c3 + 1 + len);
                    }
                    c = cArr[c + 2];
                }
            }
            if (c == 65535) {
                return null;
            }
        }
        return null;
    }

    private void init(Resources r) throws Resources.NotFoundException {
        char off;
        XmlResourceParser parser = r.getXml(R.xml.autotext);
        StringBuilder right = new StringBuilder(RIGHT);
        char[] cArr = new char[14337];
        this.mTrie = cArr;
        cArr[0] = TRIE_NULL;
        this.mTrieUsed = (char) 1;
        try {
            try {
                XmlUtils.beginDocument(parser, "words");
                while (true) {
                    XmlUtils.nextElement(parser);
                    String element = parser.getName();
                    if (element == null || !element.equals(UserDictionary.Words.WORD)) {
                        break;
                    }
                    String src = parser.getAttributeValue(null, "src");
                    if (parser.next() == 4) {
                        String dest = parser.getText();
                        if (dest.equals("")) {
                            off = 0;
                        } else {
                            off = (char) right.length();
                            right.append((char) dest.length());
                            right.append(dest);
                        }
                        add(src, off);
                    }
                }
                r.flushLayoutCache();
                parser.close();
                this.mText = right.toString();
            } catch (IOException e) {
                throw new RuntimeException(e);
            } catch (XmlPullParserException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Throwable th) {
            parser.close();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        if (r4 != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
    
        r5 = newTrieNode();
        r6 = r9.mTrie;
        r6[r1] = r5;
        r6[r5 + 0] = r3;
        r6[r6[r1] + 1] = android.text.AutoText.TRIE_NULL;
        r6[r6[r1] + 3] = android.text.AutoText.TRIE_NULL;
        r6[r6[r1] + 2] = android.text.AutoText.TRIE_NULL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
    
        if (r2 != (r0 - 1)) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
    
        r6[r6[r1] + 1] = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005c, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        r1 = r6[r1] + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void add(java.lang.String r10, char r11) {
        /*
            r9 = this;
            int r0 = r10.length()
            r1 = 0
            int r2 = r9.mSize
            int r2 = r2 + 1
            r9.mSize = r2
            r2 = 0
        Lc:
            if (r2 >= r0) goto L65
            char r3 = r10.charAt(r2)
            r4 = 0
        L13:
            char[] r5 = r9.mTrie
            char r6 = r5[r1]
            r7 = 65535(0xffff, float:9.1834E-41)
            if (r6 == r7) goto L32
            int r8 = r6 + 0
            char r8 = r5[r8]
            if (r3 != r8) goto L2f
            int r8 = r0 + (-1)
            if (r2 != r8) goto L2b
            int r6 = r6 + 1
            r5[r6] = r11
            return
        L2b:
            int r1 = r6 + 2
            r4 = 1
            goto L32
        L2f:
            int r1 = r6 + 3
            goto L13
        L32:
            if (r4 != 0) goto L62
            char r5 = r9.newTrieNode()
            char[] r6 = r9.mTrie
            r6[r1] = r5
            int r8 = r5 + 0
            r6[r8] = r3
            char r8 = r6[r1]
            int r8 = r8 + 1
            r6[r8] = r7
            char r8 = r6[r1]
            int r8 = r8 + 3
            r6[r8] = r7
            char r8 = r6[r1]
            int r8 = r8 + 2
            r6[r8] = r7
            int r7 = r0 + (-1)
            if (r2 != r7) goto L5d
            char r7 = r6[r1]
            int r7 = r7 + 1
            r6[r7] = r11
            return
        L5d:
            char r6 = r6[r1]
            int r6 = r6 + 2
            r1 = r6
        L62:
            int r2 = r2 + 1
            goto Lc
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.text.AutoText.add(java.lang.String, char):void");
    }

    private char newTrieNode() {
        int i = this.mTrieUsed + 4;
        char[] cArr = this.mTrie;
        if (i > cArr.length) {
            char[] copy = new char[cArr.length + 1024];
            System.arraycopy(cArr, 0, copy, 0, cArr.length);
            this.mTrie = copy;
        }
        char ret = this.mTrieUsed;
        this.mTrieUsed = (char) (this.mTrieUsed + 4);
        return ret;
    }
}
