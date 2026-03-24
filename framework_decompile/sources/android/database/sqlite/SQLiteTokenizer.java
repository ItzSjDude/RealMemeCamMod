package android.database.sqlite;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class SQLiteTokenizer {
    public static final int OPTION_NONE = 0;
    public static final int OPTION_TOKEN_ONLY = 1;

    private static boolean isAlpha(char ch) {
        return ('a' <= ch && ch <= 'z') || ('A' <= ch && ch <= 'Z') || ch == '_';
    }

    private static boolean isNum(char ch) {
        return '0' <= ch && ch <= '9';
    }

    private static boolean isAlNum(char ch) {
        return isAlpha(ch) || isNum(ch);
    }

    private static boolean isAnyOf(char ch, String set) {
        return set.indexOf(ch) >= 0;
    }

    private static IllegalArgumentException genException(String message, String sql) {
        throw new IllegalArgumentException(message + " in '" + sql + "'");
    }

    private static char peek(String s, int index) {
        if (index < s.length()) {
            return s.charAt(index);
        }
        return (char) 0;
    }

    public static List<String> tokenize(String sql, int options) {
        final ArrayList<String> res = new ArrayList<>();
        Objects.requireNonNull(res);
        tokenize(sql, options, new Consumer() { // from class: android.database.sqlite.SQLiteTokenizer$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                res.add((String) obj);
            }
        });
        return res;
    }

    public static void tokenize(String sql, int options, Consumer<String> checker) {
        String token;
        if (sql == null) {
            return;
        }
        int pos = 0;
        int len = sql.length();
        while (pos < len) {
            char ch = peek(sql, pos);
            if (isAlpha(ch)) {
                int start = pos;
                do {
                    pos++;
                } while (isAlNum(peek(sql, pos)));
                String token2 = sql.substring(start, pos);
                checker.accept(token2);
            } else if (isAnyOf(ch, "'\"`")) {
                int quoteStart = pos;
                int pos2 = pos + 1;
                while (true) {
                    int pos3 = sql.indexOf(ch, pos2);
                    if (pos3 < 0) {
                        throw genException("Unterminated quote", sql);
                    }
                    if (peek(sql, pos3 + 1) == ch) {
                        pos2 = pos3 + 2;
                    } else {
                        pos = pos3 + 1;
                        if (ch != '\'') {
                            String tokenUnquoted = sql.substring(quoteStart + 1, pos3);
                            if (tokenUnquoted.indexOf(ch) >= 0) {
                                token = tokenUnquoted.replaceAll(String.valueOf(ch) + ch, String.valueOf(ch));
                            } else {
                                token = tokenUnquoted;
                            }
                            checker.accept(token);
                        } else {
                            int i = options & 1;
                            options = i;
                            if (i != 0) {
                                throw genException("Non-token detected", sql);
                            }
                        }
                    }
                }
            } else if (ch == '[') {
                int quoteStart2 = pos;
                int pos4 = sql.indexOf(93, pos + 1);
                if (pos4 < 0) {
                    throw genException("Unterminated quote", sql);
                }
                pos = pos4 + 1;
                String token3 = sql.substring(quoteStart2 + 1, pos4);
                checker.accept(token3);
            } else {
                int quoteStart3 = options & 1;
                options = quoteStart3;
                if (quoteStart3 != 0) {
                    throw genException("Non-token detected", sql);
                }
                if (ch == '-' && peek(sql, pos + 1) == '-') {
                    int pos5 = sql.indexOf(10, pos + 2);
                    if (pos5 < 0) {
                        throw genException("Unterminated comment", sql);
                    }
                    pos = pos5 + 1;
                } else if (ch == '/' && peek(sql, pos + 1) == '*') {
                    int pos6 = sql.indexOf("*/", pos + 2);
                    if (pos6 < 0) {
                        throw genException("Unterminated comment", sql);
                    }
                    pos = pos6 + 2;
                } else {
                    if (ch == ';') {
                        throw genException("Semicolon is not allowed", sql);
                    }
                    pos++;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:434:0x06b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isKeyword(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 2586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.database.sqlite.SQLiteTokenizer.isKeyword(java.lang.String):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isFunction(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.database.sqlite.SQLiteTokenizer.isFunction(java.lang.String):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isType(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.database.sqlite.SQLiteTokenizer.isType(java.lang.String):boolean");
    }
}
