package com.oplus.oms.split.signature;

import android.util.Pair;
import android.view.OplusKeyEvent;
import com.oplus.oms.split.common.SplitLog;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class G implements A {
    private static final String TAG = "Split:G";
    private static final String UNKNOWN_SIGNATURE = "Unknown signature algorithm: 0x";
    private final ByteBuffer a;

    private static Pair<ByteBuffer, Long> a(RandomAccessFile var0, int var1) throws IOException {
        int var10000;
        if (var1 >= 0) {
            short s = 65535;
            if (var1 <= 65535) {
                long var2 = var0.length();
                if (var2 < 22) {
                    return null;
                }
                ByteBuffer var4 = ByteBuffer.allocate(((int) Math.min(var1, var2 - 22)) + 22);
                var4.order(ByteOrder.LITTLE_ENDIAN);
                long var5 = var2 - var4.capacity();
                var0.seek(var5);
                var0.readFully(var4.array(), var4.arrayOffset(), var4.capacity());
                a(var4);
                int var10 = var4.capacity();
                if (var10 >= 22) {
                    int var11 = Math.min(var10 - 22, 65535);
                    int var12 = var10 - 22;
                    int var13 = 0;
                    while (var13 < var11) {
                        int var14 = var12 - var13;
                        short s2 = s;
                        if (var4.getInt(var14) == 101010256) {
                            int var17 = var14 + 20;
                            if ((var4.getShort(var17) & s2) == var13) {
                                var10000 = var14;
                                break;
                            }
                        }
                        var13++;
                        s = s2;
                    }
                }
                var10000 = -1;
                int var7 = var10000;
                if (var10000 == -1) {
                    return null;
                }
                var4.position(var7);
                ByteBuffer var8 = var4.slice();
                var8.order(ByteOrder.LITTLE_ENDIAN);
                return Pair.create(var8, Long.valueOf(var7 + var5));
            }
        }
        throw new IllegalArgumentException(new StringBuilder(27).append("maxCommentSize: ").append(var1).toString());
    }

    private static void a(ByteBuffer var0) {
        if (var0.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static long a(ByteBuffer var0, int var1) {
        return var0.getInt(var1) & 4294967295L;
    }

    public static X509Certificate[][] a(String var0) throws IOException, D {
        RandomAccessFile var1 = new RandomAccessFile(var0, "r");
        try {
            X509Certificate[][] var2 = a(var1);
            var1.close();
            try {
                var1.close();
            } catch (IOException e) {
                SplitLog.d(TAG, "var1 close exception", new Object[0]);
            }
            return var2;
        } catch (Throwable th) {
            try {
                var1.close();
            } catch (IOException e2) {
                SplitLog.d(TAG, "var1 close exception", new Object[0]);
            }
            throw th;
        }
    }

    private static X509Certificate[][] a(RandomAccessFile var0) throws IOException, D {
        C var1 = b(var0);
        return a(var0.getChannel(), var1);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.oplus.oms.split.signature.C b(java.io.RandomAccessFile r12) throws java.io.IOException, com.oplus.oms.split.signature.D {
        /*
            android.util.Pair r0 = c(r12)
            java.lang.Object r1 = r0.first
            r10 = r1
            java.nio.ByteBuffer r10 = (java.nio.ByteBuffer) r10
            java.lang.Object r1 = r0.second
            java.lang.Long r1 = (java.lang.Long) r1
            long r8 = r1.longValue()
            r1 = 20
            long r1 = r8 - r1
            r3 = r1
            r5 = 0
            int r1 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r1 < 0) goto L2a
            r12.seek(r3)
            int r1 = r12.readInt()
            r2 = 1347094023(0x504b0607, float:1.3624679E10)
            if (r1 != r2) goto L2a
            r1 = 1
            goto L2b
        L2a:
            r1 = 0
        L2b:
            if (r1 != 0) goto L4c
            long r6 = a(r10, r8)
            android.util.Pair r0 = a(r12, r6)
            java.lang.Object r2 = r0.first
            r11 = r2
            java.nio.ByteBuffer r11 = (java.nio.ByteBuffer) r11
            java.lang.Object r2 = r0.second
            java.lang.Long r2 = (java.lang.Long) r2
            long r4 = r2.longValue()
            java.nio.ByteBuffer r3 = d(r11)
            com.oplus.oms.split.signature.C r2 = new com.oplus.oms.split.signature.C
            r2.<init>(r3, r4, r6, r8, r10)
            return r2
        L4c:
            com.oplus.oms.split.signature.D r0 = new com.oplus.oms.split.signature.D
            java.lang.String r2 = "ZIP64 APK not supported"
            r0.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.oms.split.signature.G.b(java.io.RandomAccessFile):com.oplus.oms.split.signature.C");
    }

    private static X509Certificate[][] a(FileChannel fileChannel, C cVar) {
        Throwable e52;
        int i = 0;
        Map hashMap = new HashMap();
        List arrayList = new ArrayList();
        try {
            CertificateFactory instance = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer b = b(cVar.a);
                while (b.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(a(b(b), (Map<Integer, byte[]>) hashMap, instance));
                    } catch (IOException e) {
                    } catch (SecurityException e2) {
                    } catch (BufferUnderflowException e3) {
                    } catch (Throwable th) {
                        e5 = th;
                        try {
                            throw new SecurityException("Failed to read list of signers", e5);
                        } catch (Throwable e5) {
                            e52 = e5;
                            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e52);
                        }
                    }
                }
            } catch (Throwable th2) {
                e5 = th2;
            }
            try {
                if (i <= 0) {
                    throw new SecurityException("No signers found");
                }
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No content digests found");
                }
                a(hashMap, fileChannel, cVar.b, cVar.c, cVar.d, cVar.e);
                return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
            } catch (Throwable th3) {
                e5 = th3;
                throw new SecurityException("Failed to read list of signers", e5);
            }
        } catch (Throwable th4) {
            e52 = th4;
        }
    }

    private static X509Certificate[] a(ByteBuffer var0, Map<Integer, byte[]> var1, CertificateFactory var2) throws IOException {
        ByteBuffer var3 = b(var0);
        ByteBuffer var4 = b(var0);
        byte[] var5 = c(var0);
        ArrayList var9 = new ArrayList();
        byte[] var8 = null;
        int var7 = -1;
        int var6 = 0;
        while (var4.hasRemaining()) {
            var6++;
            try {
                ByteBuffer var10 = b(var4);
                if (var10.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int var11 = var10.getInt();
                var9.add(Integer.valueOf(var11));
                if (a(var11) && (var7 == -1 || a(var11, var7) > 0)) {
                    var7 = var11;
                    var8 = c(var10);
                }
            } catch (IOException | BufferUnderflowException var31) {
                throw new SecurityException(new StringBuilder(45).append("Failed to parse signature record #").append(var6).toString(), var31);
            }
        }
        if (var7 == -1) {
            if (var6 == 0) {
                throw new SecurityException("No signatures found");
            }
            throw new SecurityException("No supported signatures found");
        }
        String var32 = e(var7);
        Pair var33 = f(var7);
        String var12 = (String) var33.first;
        AlgorithmParameterSpec var13 = (AlgorithmParameterSpec) var33.second;
        try {
            PublicKey var15 = KeyFactory.getInstance(var32).generatePublic(new X509EncodedKeySpec(var5));
            Signature var16 = Signature.getInstance(var12);
            var16.initVerify(var15);
            if (var13 != null) {
                try {
                    var16.setParameter(var13);
                } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException e) {
                    var30 = e;
                    throw new SecurityException(new StringBuilder(String.valueOf(var12).length() + 27).append("Failed to verify ").append(var12).append(" signature").toString(), var30);
                }
            }
            var16.update(var3);
            boolean var14 = var16.verify(var8);
            if (!var14) {
                throw new SecurityException(String.valueOf(var12).concat(" signature did not verify"));
            }
            var3.clear();
            ByteBuffer var35 = b(var3);
            ArrayList var17 = new ArrayList();
            int var18 = 0;
            byte[] var34 = null;
            while (var35.hasRemaining()) {
                int var182 = var18 + 1;
                try {
                    ByteBuffer var19 = b(var35);
                    ByteBuffer var36 = var3;
                    if (var19.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    try {
                        int var20 = var19.getInt();
                        var17.add(Integer.valueOf(var20));
                        if (var20 == var7) {
                            var34 = c(var19);
                        }
                        var18 = var182;
                        var3 = var36;
                    } catch (IOException | BufferUnderflowException e2) {
                        var29 = e2;
                    }
                    var29 = e2;
                } catch (IOException | BufferUnderflowException e3) {
                    var29 = e3;
                }
                throw new IOException(new StringBuilder(42).append("Failed to parse digest record #").append(var182).toString(), var29);
            }
            ByteBuffer var37 = var3;
            if (!var9.equals(var17)) {
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            int var362 = b(var7);
            byte[] var342 = var34;
            byte[] var372 = var1.put(Integer.valueOf(var362), var342);
            if (var372 != null && !MessageDigest.isEqual(var372, var342)) {
                throw new SecurityException(c(var362).concat(" contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer var21 = b(var37);
            ArrayList var22 = new ArrayList();
            int var23 = 0;
            while (var21.hasRemaining()) {
                ByteBuffer var212 = var21;
                int var232 = var23 + 1;
                byte[] var343 = var342;
                byte[] var24 = c(var212);
                try {
                    int var72 = var7;
                    try {
                        X509Certificate var25 = (X509Certificate) var2.generateCertificate(new ByteArrayInputStream(var24));
                        X509CertificateEx var38 = new X509CertificateEx(var25, var24);
                        var22.add(var38);
                        var23 = var232;
                        var21 = var212;
                        var342 = var343;
                        var7 = var72;
                    } catch (CertificateException e4) {
                        var28 = e4;
                        throw new SecurityException(new StringBuilder(41).append("Failed to decode certificate #").append(var232).toString(), var28);
                    }
                } catch (CertificateException e5) {
                    var28 = e5;
                }
            }
            if (var22.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            byte[] var39 = ((X509Certificate) var22.get(0)).getPublicKey().getEncoded();
            if (!Arrays.equals(var5, var39)) {
                throw new SecurityException("Public key mismatch between certificate and signature record");
            }
            return (X509Certificate[]) var22.toArray(new X509Certificate[var22.size()]);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException e6) {
            var30 = e6;
        }
    }

    private static void a(Map<Integer, byte[]> var0, FileChannel var1, long var2, long var4, long var6, ByteBuffer var8) {
        if (var0.isEmpty()) {
            throw new SecurityException("No digests provided");
        }
        B var9 = new B(var1, 0L, var2);
        B var10 = new B(var1, var4, var6 - var4);
        ByteBuffer var82 = var8.duplicate();
        var82.order(ByteOrder.LITTLE_ENDIAN);
        a(var82);
        int var23 = var82.position() + 16;
        if (var2 >= 0 && var2 <= 4294967295L) {
            var82.putInt(var82.position() + var23, (int) var2);
            G var11 = new G(var82);
            int[] var12 = new int[var0.size()];
            Iterator var14 = var0.keySet().iterator();
            int var13 = 0;
            while (var14.hasNext()) {
                int var15 = var14.next().intValue();
                var12[var13] = var15;
                var13++;
            }
            try {
                byte[][] var27 = a(var12, new A[]{var9, var10, var11});
                for (int var152 = 0; var152 < var12.length; var152++) {
                    int var16 = var12[var152];
                    byte[] var17 = var0.get(Integer.valueOf(var16));
                    byte[] var18 = var27[var152];
                    if (!MessageDigest.isEqual(var17, var18)) {
                        throw new SecurityException(c(var16).concat(" digest of contents did not verify"));
                    }
                }
                return;
            } catch (DigestException var26) {
                throw new SecurityException("Failed to compute digest(s) of contents", var26);
            }
        }
        throw new IllegalArgumentException(new StringBuilder(47).append("uint32 value of out range: ").append(var2).toString());
    }

    /* JADX WARN: Incorrect condition in loop: B:38:0x00c4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[][] a(int[] r34, com.oplus.oms.split.signature.A[] r35) throws java.security.DigestException {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.oms.split.signature.G.a(int[], com.oplus.oms.split.signature.A[]):byte[][]");
    }

    private static Pair<ByteBuffer, Long> c(RandomAccessFile var0) throws IOException, D {
        Pair var7 = a(var0, 0);
        Pair a = var0.length() < 22 ? null : var7 != null ? var7 : a(var0, 65535);
        Pair var1 = a;
        if (a == null) {
            long var2 = var0.length();
            throw new D(new StringBuilder(102).append("Not an APK file: ZIP End of Central Directory record not found in file with ").append(var2).append(" bytes").toString());
        }
        return var1;
    }

    private static long a(ByteBuffer var0, long var1) throws D {
        a(var0);
        long var3 = a(var0, var0.position() + 16);
        if (var3 >= var1) {
            throw new D(new StringBuilder(122).append("ZIP Central Directory offset out of range: ").append(var3).append(". ZIP End of Central Directory offset: ").append(var1).toString());
        }
        a(var0);
        long var5 = a(var0, var0.position() + 12);
        if (var3 + var5 == var1) {
            return var3;
        }
        throw new D("ZIP Central Directory is not immediately followed by End of Central Directory");
    }

    private static long a(long var0) {
        return ((var0 + 1048576) - 1) / 1048576;
    }

    private static boolean a(int var0) {
        switch (var0) {
            case 257:
            case 258:
            case 259:
            case 260:
            case 513:
            case 514:
            case OplusKeyEvent.SPRUCE_DOUBLE_CLICK_KEYCODE /* 769 */:
                return true;
            default:
                return false;
        }
    }

    private static int a(int var0, int var1) {
        int var2 = b(var0);
        int var3 = b(var1);
        return b(var2, var3);
    }

    private static int b(int var0, int var1) {
        switch (var0) {
            case 1:
                switch (var1) {
                    case 1:
                        return 0;
                    case 2:
                        return -1;
                    default:
                        throw new IllegalArgumentException(new StringBuilder(37).append("Unknown digestAlgorithm2: ").append(var1).toString());
                }
            case 2:
                switch (var1) {
                    case 1:
                        return 1;
                    case 2:
                        return 0;
                    default:
                        throw new IllegalArgumentException(new StringBuilder(37).append("Unknown digestAlgorithm2: ").append(var1).toString());
                }
            default:
                throw new IllegalArgumentException(new StringBuilder(37).append("Unknown digestAlgorithm1: ").append(var0).toString());
        }
    }

    private static int b(int i) {
        String str;
        switch (i) {
            case 257:
            case 259:
            case 513:
            case OplusKeyEvent.SPRUCE_DOUBLE_CLICK_KEYCODE /* 769 */:
                return 1;
            case 258:
            case 260:
            case 514:
                return 2;
            default:
                String valueOf = String.valueOf(Long.toHexString(i));
                if (valueOf.length() != 0) {
                    str = UNKNOWN_SIGNATURE.concat(valueOf);
                } else {
                    str = new String(UNKNOWN_SIGNATURE);
                }
                throw new IllegalArgumentException(str);
        }
    }

    private static String c(int var0) {
        switch (var0) {
            case 1:
                return "SHA-256";
            case 2:
                return "SHA-512";
            default:
                throw new IllegalArgumentException(new StringBuilder(44).append("Unknown content digest algorthm: ").append(var0).toString());
        }
    }

    private static int d(int var0) {
        switch (var0) {
            case 1:
                return 32;
            case 2:
                return 64;
            default:
                throw new IllegalArgumentException(new StringBuilder(44).append("Unknown content digest algorthm: ").append(var0).toString());
        }
    }

    private static String e(int i) {
        String str;
        switch (i) {
            case 257:
            case 258:
            case 259:
            case 260:
                return "RSA";
            case 513:
            case 514:
                return "EC";
            case OplusKeyEvent.SPRUCE_DOUBLE_CLICK_KEYCODE /* 769 */:
                return "DSA";
            default:
                String valueOf = String.valueOf(Long.toHexString(i));
                if (valueOf.length() != 0) {
                    str = UNKNOWN_SIGNATURE.concat(valueOf);
                } else {
                    str = new String(UNKNOWN_SIGNATURE);
                }
                throw new IllegalArgumentException(str);
        }
    }

    private static Pair<String, ? extends AlgorithmParameterSpec> f(int i) {
        String str;
        switch (i) {
            case 257:
                return Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
            case 258:
                return Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
            case 259:
                return Pair.create("SHA256withRSA", null);
            case 260:
                return Pair.create("SHA512withRSA", null);
            case 513:
                return Pair.create("SHA256withECDSA", null);
            case 514:
                return Pair.create("SHA512withECDSA", null);
            case OplusKeyEvent.SPRUCE_DOUBLE_CLICK_KEYCODE /* 769 */:
                return Pair.create("SHA256withDSA", null);
            default:
                String valueOf = String.valueOf(Long.toHexString(i));
                if (valueOf.length() != 0) {
                    str = UNKNOWN_SIGNATURE.concat(valueOf);
                } else {
                    str = new String(UNKNOWN_SIGNATURE);
                }
                throw new IllegalArgumentException(str);
        }
    }

    private static ByteBuffer a(ByteBuffer var0, int var1, int var2) {
        if (var2 < 8) {
            throw new IllegalArgumentException(new StringBuilder(38).append("end < start: ").append(var2).append(" < 8").toString());
        }
        int var3 = var0.capacity();
        if (var2 > var0.capacity()) {
            throw new IllegalArgumentException(new StringBuilder(41).append("end > capacity: ").append(var2).append(" > ").append(var3).toString());
        }
        int var4 = var0.limit();
        int var5 = var0.position();
        try {
            var0.position(0);
            var0.limit(var2);
            var0.position(8);
            ByteBuffer var6 = var0.slice();
            var6.order(var0.order());
            return var6;
        } finally {
            var0.position(0);
            var0.limit(var4);
            var0.position(var5);
        }
    }

    private static ByteBuffer b(ByteBuffer var0, int var1) {
        if (var1 < 0) {
            throw new IllegalArgumentException(new StringBuilder(17).append("size: ").append(var1).toString());
        }
        int var2 = var0.limit();
        int var3 = var0.position();
        int var4 = var3 + var1;
        if (var4 >= var3 && var4 <= var2) {
            var0.limit(var4);
            try {
                ByteBuffer var5 = var0.slice();
                var5.order(var0.order());
                var0.position(var4);
                return var5;
            } finally {
                var0.limit(var2);
            }
        }
        throw new BufferUnderflowException();
    }

    private static ByteBuffer b(ByteBuffer var0) throws IOException {
        if (var0.remaining() < 4) {
            throw new IOException(new StringBuilder(93).append("Remaining buffer too short to contain length of length-prefixed field. Remaining: ").append(var0.remaining()).toString());
        }
        int var1 = var0.getInt();
        if (var1 < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (var1 > var0.remaining()) {
            int var2 = var0.remaining();
            throw new IOException(new StringBuilder(101).append("Length-prefixed field longer than remaining buffer. Field length: ").append(var1).append(", remaining: ").append(var2).toString());
        }
        return b(var0, var1);
    }

    private static byte[] c(ByteBuffer var0) throws IOException {
        int var1 = var0.getInt();
        if (var1 < 0) {
            throw new IOException("Negative length");
        }
        if (var1 > var0.remaining()) {
            int var3 = var0.remaining();
            throw new IOException(new StringBuilder(90).append("Underflow while reading length-prefixed value. Length: ").append(var1).append(", available: ").append(var3).toString());
        }
        byte[] var2 = new byte[var1];
        var0.get(var2);
        return var2;
    }

    private static void a(int var0, byte[] var1, int var2) {
        var1[1] = (byte) var0;
        var1[2] = (byte) (var0 >>> 8);
        var1[3] = (byte) (var0 >>> 16);
        var1[4] = (byte) (var0 >>> 24);
    }

    private static Pair<ByteBuffer, Long> a(RandomAccessFile var0, long var1) throws D, IOException {
        if (var1 < 32) {
            throw new D(new StringBuilder(87).append("APK too small for APK Signing Block. ZIP Central Directory offset: ").append(var1).toString());
        }
        ByteBuffer var3 = ByteBuffer.allocate(24);
        var3.order(ByteOrder.LITTLE_ENDIAN);
        var0.seek(var1 - var3.capacity());
        var0.readFully(var3.array(), var3.arrayOffset(), var3.capacity());
        if (var3.getLong(8) == 2334950737559900225L && var3.getLong(16) == 3617552046287187010L) {
            long var4 = var3.getLong(0);
            if (var4 >= var3.capacity() && var4 <= 2147483639) {
                int var6 = (int) (8 + var4);
                long var7 = var1 - var6;
                if (var7 < 0) {
                    throw new D(new StringBuilder(59).append("APK Signing Block offset out of range: ").append(var7).toString());
                }
                ByteBuffer var9 = ByteBuffer.allocate(var6);
                var9.order(ByteOrder.LITTLE_ENDIAN);
                var0.seek(var7);
                var0.readFully(var9.array(), var9.arrayOffset(), var9.capacity());
                long var10 = var9.getLong(0);
                if (var10 != var4) {
                    throw new D(new StringBuilder(103).append("APK Signing Block sizes in header and footer do not match: ").append(var10).append(" vs ").append(var4).toString());
                }
                return Pair.create(var9, Long.valueOf(var7));
            }
            throw new D(new StringBuilder(57).append("APK Signing Block size out of range: ").append(var4).toString());
        }
        throw new D("No APK Signing Block before ZIP Central Directory");
    }

    private static ByteBuffer d(ByteBuffer var0) throws D {
        e(var0);
        ByteBuffer var1 = a(var0, 8, var0.capacity() - 24);
        int var2 = 0;
        while (var1.hasRemaining()) {
            var2++;
            if (var1.remaining() < 8) {
                throw new D(new StringBuilder(70).append("Insufficient data to read size of APK Signing Block entry #").append(var2).toString());
            }
            long var3 = var1.getLong();
            if (var3 < 4 || var3 > 2147483647L) {
                throw new D(new StringBuilder(76).append("APK Signing Block entry #").append(var2).append(" size out of range: ").append(var3).toString());
            }
            int var5 = (int) var3;
            int var6 = var1.position() + var5;
            if (var5 > var1.remaining()) {
                int var8 = var1.remaining();
                throw new D(new StringBuilder(91).append("APK Signing Block entry #").append(var2).append(" size out of range: ").append(var5).append(", available: ").append(var8).toString());
            }
            if (var1.getInt() == 1896449818) {
                return b(var1, var5 - 4);
            }
            var1.position(var6);
        }
        throw new D("No APK Signature Scheme v2 block in APK Signing Block");
    }

    private static void e(ByteBuffer var0) {
        if (var0.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private G(ByteBuffer var1) {
        this.a = var1.slice();
    }

    @Override // com.oplus.oms.split.signature.A
    public long a() {
        long capacity;
        synchronized (this.a) {
            capacity = this.a.capacity();
        }
        return capacity;
    }

    @Override // com.oplus.oms.split.signature.A
    public void a(MessageDigest[] var1, long var2, int var4) {
        ByteBuffer var5;
        synchronized (this.a) {
            this.a.position((int) var2);
            this.a.limit(((int) var2) + var4);
            var5 = this.a.slice();
        }
        for (MessageDigest var9 : var1) {
            var5.position(0);
            var9.update(var5);
        }
    }
}
