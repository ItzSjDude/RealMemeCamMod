package com.android.internal.org.bouncycastle.asn1.teletrust;

import com.android.internal.org.bouncycastle.asn1.ASN1ObjectIdentifier;
import com.oplus.uifirst.IOplusUIFirstManager;

/* loaded from: classes4.dex */
public interface TeleTrusTObjectIdentifiers {
    public static final ASN1ObjectIdentifier brainpoolP160r1;
    public static final ASN1ObjectIdentifier brainpoolP160t1;
    public static final ASN1ObjectIdentifier brainpoolP192r1;
    public static final ASN1ObjectIdentifier brainpoolP192t1;
    public static final ASN1ObjectIdentifier brainpoolP224r1;
    public static final ASN1ObjectIdentifier brainpoolP224t1;
    public static final ASN1ObjectIdentifier brainpoolP256r1;
    public static final ASN1ObjectIdentifier brainpoolP256t1;
    public static final ASN1ObjectIdentifier brainpoolP320r1;
    public static final ASN1ObjectIdentifier brainpoolP320t1;
    public static final ASN1ObjectIdentifier brainpoolP384r1;
    public static final ASN1ObjectIdentifier brainpoolP384t1;
    public static final ASN1ObjectIdentifier brainpoolP512r1;
    public static final ASN1ObjectIdentifier brainpoolP512t1;
    public static final ASN1ObjectIdentifier ecSign;
    public static final ASN1ObjectIdentifier ecSignWithRipemd160;
    public static final ASN1ObjectIdentifier ecSignWithSha1;
    public static final ASN1ObjectIdentifier ecc_brainpool;
    public static final ASN1ObjectIdentifier ellipticCurve;
    public static final ASN1ObjectIdentifier ripemd128;
    public static final ASN1ObjectIdentifier ripemd160;
    public static final ASN1ObjectIdentifier ripemd256;
    public static final ASN1ObjectIdentifier rsaSignatureWithripemd128;
    public static final ASN1ObjectIdentifier rsaSignatureWithripemd160;
    public static final ASN1ObjectIdentifier rsaSignatureWithripemd256;
    public static final ASN1ObjectIdentifier teleTrusTAlgorithm;
    public static final ASN1ObjectIdentifier teleTrusTRSAsignatureAlgorithm;
    public static final ASN1ObjectIdentifier versionOne;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.3.36.3");
        teleTrusTAlgorithm = aSN1ObjectIdentifier;
        ripemd160 = aSN1ObjectIdentifier.branch("2.1");
        ripemd128 = aSN1ObjectIdentifier.branch("2.2");
        ripemd256 = aSN1ObjectIdentifier.branch("2.3");
        ASN1ObjectIdentifier aSN1ObjectIdentifierBranch = aSN1ObjectIdentifier.branch("3.1");
        teleTrusTRSAsignatureAlgorithm = aSN1ObjectIdentifierBranch;
        rsaSignatureWithripemd160 = aSN1ObjectIdentifierBranch.branch(IOplusUIFirstManager.APP_EXIT_ANIMATION);
        rsaSignatureWithripemd128 = aSN1ObjectIdentifierBranch.branch("3");
        rsaSignatureWithripemd256 = aSN1ObjectIdentifierBranch.branch(IOplusUIFirstManager.LAUNCHER_SI_START);
        ASN1ObjectIdentifier aSN1ObjectIdentifierBranch2 = aSN1ObjectIdentifier.branch("3.2");
        ecSign = aSN1ObjectIdentifierBranch2;
        ecSignWithSha1 = aSN1ObjectIdentifierBranch2.branch(IOplusUIFirstManager.APP_START_ANIMATION);
        ecSignWithRipemd160 = aSN1ObjectIdentifierBranch2.branch(IOplusUIFirstManager.APP_EXIT_ANIMATION);
        ASN1ObjectIdentifier aSN1ObjectIdentifierBranch3 = aSN1ObjectIdentifier.branch("3.2.8");
        ecc_brainpool = aSN1ObjectIdentifierBranch3;
        ASN1ObjectIdentifier aSN1ObjectIdentifierBranch4 = aSN1ObjectIdentifierBranch3.branch(IOplusUIFirstManager.APP_START_ANIMATION);
        ellipticCurve = aSN1ObjectIdentifierBranch4;
        ASN1ObjectIdentifier aSN1ObjectIdentifierBranch5 = aSN1ObjectIdentifierBranch4.branch(IOplusUIFirstManager.APP_START_ANIMATION);
        versionOne = aSN1ObjectIdentifierBranch5;
        brainpoolP160r1 = aSN1ObjectIdentifierBranch5.branch(IOplusUIFirstManager.APP_START_ANIMATION);
        brainpoolP160t1 = aSN1ObjectIdentifierBranch5.branch(IOplusUIFirstManager.APP_EXIT_ANIMATION);
        brainpoolP192r1 = aSN1ObjectIdentifierBranch5.branch("3");
        brainpoolP192t1 = aSN1ObjectIdentifierBranch5.branch(IOplusUIFirstManager.LAUNCHER_SI_START);
        brainpoolP224r1 = aSN1ObjectIdentifierBranch5.branch("5");
        brainpoolP224t1 = aSN1ObjectIdentifierBranch5.branch("6");
        brainpoolP256r1 = aSN1ObjectIdentifierBranch5.branch("7");
        brainpoolP256t1 = aSN1ObjectIdentifierBranch5.branch("8");
        brainpoolP320r1 = aSN1ObjectIdentifierBranch5.branch("9");
        brainpoolP320t1 = aSN1ObjectIdentifierBranch5.branch("10");
        brainpoolP384r1 = aSN1ObjectIdentifierBranch5.branch("11");
        brainpoolP384t1 = aSN1ObjectIdentifierBranch5.branch("12");
        brainpoolP512r1 = aSN1ObjectIdentifierBranch5.branch("13");
        brainpoolP512t1 = aSN1ObjectIdentifierBranch5.branch("14");
    }
}
