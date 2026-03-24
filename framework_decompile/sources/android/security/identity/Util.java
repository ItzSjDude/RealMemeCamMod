package android.security.identity;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.util.Collection;
import java.util.Iterator;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public class Util {
    private static final String TAG = "Util";

    static int[] integerCollectionToArray(Collection<Integer> collection) {
        int[] result = new int[collection.size()];
        int n = 0;
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            int item = it.next().intValue();
            result[n] = item;
            n++;
        }
        return result;
    }

    static byte[] stripLeadingZeroes(byte[] value) {
        int n = 0;
        while (n < value.length && value[n] == 0) {
            n++;
        }
        int newLen = value.length - n;
        byte[] ret = new byte[newLen];
        int m = 0;
        while (n < value.length) {
            ret[m] = value[n];
            m++;
            n++;
        }
        return ret;
    }

    static byte[] publicKeyEncodeUncompressedForm(PublicKey publicKey) {
        ECPoint w = ((ECPublicKey) publicKey).getW();
        byte[] x = stripLeadingZeroes(w.getAffineX().toByteArray());
        byte[] y = stripLeadingZeroes(w.getAffineY().toByteArray());
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            baos.write(4);
            baos.write(x);
            baos.write(y);
            return baos.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("Unexpected IOException", e);
        }
    }

    public static byte[] computeHkdf(String macAlgorithm, byte[] ikm, byte[] salt, byte[] info, int size) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(macAlgorithm);
            if (size > mac.getMacLength() * 255) {
                throw new RuntimeException("size too large");
            }
            if (salt == null) {
                mac.init(new SecretKeySpec(new byte[mac.getMacLength()], macAlgorithm));
            } else {
                try {
                    if (salt.length == 0) {
                        mac.init(new SecretKeySpec(new byte[mac.getMacLength()], macAlgorithm));
                    } else {
                        mac.init(new SecretKeySpec(salt, macAlgorithm));
                    }
                } catch (InvalidKeyException e) {
                    throw new RuntimeException("Error MACing", e);
                }
            }
            byte[] prk = mac.doFinal(ikm);
            byte[] result = new byte[size];
            int ctr = 1;
            int pos = 0;
            mac.init(new SecretKeySpec(prk, macAlgorithm));
            byte[] digest = new byte[0];
            while (true) {
                mac.update(digest);
                mac.update(info);
                mac.update((byte) ctr);
                digest = mac.doFinal();
                if (digest.length + pos < size) {
                    System.arraycopy(digest, 0, result, pos, digest.length);
                    pos += digest.length;
                    ctr++;
                } else {
                    System.arraycopy(digest, 0, result, pos, size - pos);
                    return result;
                }
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("No such algorithm: " + macAlgorithm, e2);
        }
    }

    private Util() {
    }
}
