package com.android.internal.org.bouncycastle.jce.provider;

import com.android.internal.org.bouncycastle.asn1.x509.TBSCertificate;
import com.android.internal.org.bouncycastle.jcajce.util.BCJcaJceHelper;
import com.android.internal.org.bouncycastle.jcajce.util.JcaJceHelper;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;

/* loaded from: classes4.dex */
public class PKIXCertPathValidatorSpi extends CertPathValidatorSpi {
    private final JcaJceHelper helper;
    private final boolean isForCRLCheck;

    public PKIXCertPathValidatorSpi() {
        this(false);
    }

    public PKIXCertPathValidatorSpi(boolean isForCRLCheck) {
        this.helper = new BCJcaJceHelper();
        this.isForCRLCheck = isForCRLCheck;
    }

    private static class NoPreloadHolder {
        private static final CertBlocklist blocklist = new CertBlocklist();

        private NoPreloadHolder() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b8 A[LOOP:1: B:63:0x01b2->B:65:0x01b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f9  */
    @Override // java.security.cert.CertPathValidatorSpi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.security.cert.CertPathValidatorResult engineValidate(java.security.cert.CertPath r44, java.security.cert.CertPathParameters r45) throws java.security.cert.CertificateNotYetValidException, java.security.cert.CertPathValidatorException, java.security.cert.CertificateExpiredException, java.security.InvalidAlgorithmParameterException {
        /*
            Method dump skipped, instructions count: 1353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi.engineValidate(java.security.cert.CertPath, java.security.cert.CertPathParameters):java.security.cert.CertPathValidatorResult");
    }

    static void checkCertificate(X509Certificate cert) throws AnnotatedException {
        try {
            TBSCertificate.getInstance(cert.getTBSCertificate());
        } catch (IllegalArgumentException e) {
            throw new AnnotatedException(e.getMessage());
        } catch (CertificateEncodingException e2) {
            throw new AnnotatedException("unable to process TBSCertificate", e2);
        }
    }
}
