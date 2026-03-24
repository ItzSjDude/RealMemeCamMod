package android.text.method;

import android.icu.text.DecimalFormatSymbols;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.view.KeyEvent;
import android.view.View;
import java.util.Collection;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class NumberKeyListener extends BaseKeyListener implements InputFilter {
    private static final String DATE_TIME_FORMAT_SYMBOLS = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx";
    private static final char SINGLE_QUOTE = '\'';

    protected abstract char[] getAcceptedChars();

    protected int lookup(KeyEvent event, Spannable content) {
        return event.getMatch(getAcceptedChars(), getMetaState(content, event));
    }

    public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
        char[] accept = getAcceptedChars();
        int i = start;
        while (i < end && ok(accept, source.charAt(i))) {
            i++;
        }
        if (i == end) {
            return null;
        }
        if (end - start == 1) {
            return "";
        }
        SpannableStringBuilder filtered = new SpannableStringBuilder(source, start, end);
        int i2 = i - start;
        int end2 = end - start;
        int i3 = end2 - start;
        for (int j = end2 - 1; j >= i2; j--) {
            if (!ok(accept, source.charAt(j))) {
                filtered.delete(j, j + 1);
            }
        }
        return filtered;
    }

    protected static boolean ok(char[] accept, char c) {
        for (int i = accept.length - 1; i >= 0; i--) {
            if (accept[i] == c) {
                return true;
            }
        }
        return false;
    }

    @Override // android.text.method.BaseKeyListener, android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable content, int keyCode, KeyEvent event) {
        int a = Selection.getSelectionStart(content);
        int b = Selection.getSelectionEnd(content);
        int selStart = Math.min(a, b);
        int selEnd = Math.max(a, b);
        if (selStart < 0 || selEnd < 0) {
            selEnd = 0;
            selStart = 0;
            Selection.setSelection(content, 0);
        }
        int i = event != null ? lookup(event, content) : 0;
        int repeatCount = event != null ? event.getRepeatCount() : 0;
        if (repeatCount == 0) {
            if (i != 0) {
                if (selStart != selEnd) {
                    Selection.setSelection(content, selEnd);
                }
                content.replace(selStart, selEnd, String.valueOf((char) i));
                adjustMetaAfterKeypress(content);
                return true;
            }
        } else if (i == 48 && repeatCount == 1 && selStart == selEnd && selEnd > 0 && content.charAt(selStart - 1) == '0') {
            content.replace(selStart - 1, selEnd, String.valueOf('+'));
            adjustMetaAfterKeypress(content);
            return true;
        }
        adjustMetaAfterKeypress(content);
        return super.onKeyDown(view, content, keyCode, event);
    }

    static boolean addDigits(Collection<Character> collection, Locale locale) {
        if (locale == null) {
            return false;
        }
        String[] digits = DecimalFormatSymbols.getInstance(locale).getDigitStrings();
        for (int i = 0; i < 10; i++) {
            if (digits[i].length() > 1) {
                return false;
            }
            collection.add(Character.valueOf(digits[i].charAt(0)));
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0030 A[PHI: r2
      0x0030: PHI (r2v2 'outsideQuotes' boolean) = (r2v1 'outsideQuotes' boolean), (r2v4 'outsideQuotes' boolean) binds: [B:12:0x001e, B:19:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean addFormatCharsFromSkeleton(java.util.Collection<java.lang.Character> r7, java.util.Locale r8, java.lang.String r9, java.lang.String r10) {
        /*
            r0 = 0
            if (r8 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = android.text.format.DateFormat.getBestDateTimePattern(r8, r9)
            r2 = 1
            r3 = 0
        La:
            int r4 = r1.length()
            r5 = 1
            if (r3 >= r4) goto L4d
            char r4 = r1.charAt(r3)
            boolean r6 = java.lang.Character.isSurrogate(r4)
            if (r6 == 0) goto L1c
            return r0
        L1c:
            r6 = 39
            if (r4 != r6) goto L30
            if (r2 != 0) goto L23
            goto L24
        L23:
            r5 = r0
        L24:
            r2 = r5
            if (r3 == 0) goto L4a
            int r5 = r3 + (-1)
            char r5 = r1.charAt(r5)
            if (r5 == r6) goto L30
            goto L4a
        L30:
            if (r2 == 0) goto L43
            int r5 = r10.indexOf(r4)
            r6 = -1
            if (r5 == r6) goto L3a
            goto L4a
        L3a:
            java.lang.String r5 = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"
            int r5 = r5.indexOf(r4)
            if (r5 == r6) goto L43
            return r0
        L43:
            java.lang.Character r5 = java.lang.Character.valueOf(r4)
            r7.add(r5)
        L4a:
            int r3 = r3 + 1
            goto La
        L4d:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: android.text.method.NumberKeyListener.addFormatCharsFromSkeleton(java.util.Collection, java.util.Locale, java.lang.String, java.lang.String):boolean");
    }

    static boolean addFormatCharsFromSkeletons(Collection<Character> collection, Locale locale, String[] skeletons, String symbolsToIgnore) {
        for (String str : skeletons) {
            boolean success = addFormatCharsFromSkeleton(collection, locale, str, symbolsToIgnore);
            if (!success) {
                return false;
            }
        }
        return true;
    }

    static boolean addAmPmChars(Collection<Character> collection, Locale locale) {
        if (locale == null) {
            return false;
        }
        String[] amPm = DateFormat.getIcuDateFormatSymbols(locale).getAmPmStrings();
        for (int i = 0; i < amPm.length; i++) {
            for (int j = 0; j < amPm[i].length(); j++) {
                char ch = amPm[i].charAt(j);
                if (!Character.isBmpCodePoint(ch)) {
                    return false;
                }
                collection.add(Character.valueOf(ch));
            }
        }
        return true;
    }

    static char[] collectionToArray(Collection<Character> chars) {
        char[] result = new char[chars.size()];
        int i = 0;
        for (Character ch : chars) {
            result[i] = ch.charValue();
            i++;
        }
        return result;
    }
}
