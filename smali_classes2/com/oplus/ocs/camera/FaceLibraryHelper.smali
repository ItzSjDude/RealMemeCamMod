.class public Lcom/oplus/ocs/camera/FaceLibraryHelper;
.super Ljava/lang/Object;
.source "FaceLibraryHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertColorSpace([BII[BI)V
    .locals 0

    .line 196
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sensetime/faceapi/FaceLibrary;->convertColorSpace([BII[BI)V

    return-void
.end method

.method public static cropNv21Data([BIIIIII[B)V
    .locals 0

    .line 208
    invoke-static/range {p0 .. p7}, Lcom/sensetime/faceapi/FaceLibrary;->cropNv21Data([BIIIIII[B)V

    return-void
.end method

.method public static cvFaceAttributeBytes(J[BIIIILcom/sensetime/faceapi/model/FaceInfo;[I)Lcom/sensetime/faceapi/model/FaceAttrInfo;
    .locals 0

    .line 134
    invoke-static/range {p0 .. p8}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceAttributeBytes(J[BIIIILcom/sensetime/faceapi/model/FaceInfo;[I)Lcom/sensetime/faceapi/model/FaceAttrInfo;

    move-result-object p0

    return-object p0
.end method

.method public static cvFaceAttributeInts(J[IIIIILcom/sensetime/faceapi/model/FaceInfo;[I)Lcom/sensetime/faceapi/model/FaceAttrInfo;
    .locals 0

    .line 129
    invoke-static/range {p0 .. p8}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceAttributeInts(J[IIIIILcom/sensetime/faceapi/model/FaceInfo;[I)Lcom/sensetime/faceapi/model/FaceAttrInfo;

    move-result-object p0

    return-object p0
.end method

.method public static cvFaceCluster(J[[B[I[I)V
    .locals 0

    .line 147
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCluster(J[[B[I[I)V

    return-void
.end method

.method public static cvFaceCompareFeature(J[B[B[I)F
    .locals 0

    .line 105
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCompareFeature(J[B[B[I)F

    move-result p0

    return p0
.end method

.method public static cvFaceCreateAttribute(Ljava/lang/String;)J
    .locals 2

    .line 124
    invoke-static {p0}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCreateAttribute(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static cvFaceCreateCluster(Ljava/lang/String;)J
    .locals 2

    .line 143
    invoke-static {p0}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCreateCluster(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static cvFaceCreateDetector(Ljava/lang/String;I)J
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCreateDetector(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static cvFaceCreateFigureSeg(Ljava/lang/String;I)J
    .locals 0

    .line 160
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCreateFigureSeg(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static cvFaceCreateHackness(Ljava/lang/String;)J
    .locals 2

    .line 182
    invoke-static {p0}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCreateHackness(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static cvFaceCreateTracker(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCreateTracker(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static cvFaceCreateVerify(Ljava/lang/String;)J
    .locals 2

    .line 89
    invoke-static {p0}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceCreateVerify(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static cvFaceDeserialize([B)J
    .locals 2

    .line 101
    invoke-static {p0}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDeserialize([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static cvFaceDestroyAttribute(J)V
    .locals 0

    .line 138
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDestroyAttribute(J)V

    return-void
.end method

.method public static cvFaceDestroyCluster(J)V
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDestroyCluster(J)V

    return-void
.end method

.method public static cvFaceDestroyDetector(J)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDestroyDetector(J)V

    return-void
.end method

.method public static cvFaceDestroyFigureSeg(J)V
    .locals 0

    .line 177
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDestroyFigureSeg(J)V

    return-void
.end method

.method public static cvFaceDestroyHackness(J)V
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDestroyHackness(J)V

    return-void
.end method

.method public static cvFaceDestroyTracker(J)V
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDestroyTracker(J)V

    return-void
.end method

.method public static cvFaceDestroyVerify(J)V
    .locals 0

    .line 119
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDestroyVerify(J)V

    return-void
.end method

.method public static cvFaceDetectBytes(J[BIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 0

    .line 44
    invoke-static/range {p0 .. p8}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDetectBytes(J[BIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static cvFaceDetectInts(J[IIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 0

    .line 49
    invoke-static/range {p0 .. p8}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceDetectInts(J[IIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static cvFaceFigureSeg(J[BIIIII[BI)I
    .locals 0

    .line 167
    invoke-static/range {p0 .. p9}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceFigureSeg(J[BIIIII[BI)I

    move-result p0

    return p0
.end method

.method public static cvFaceFigureSeg(J[BIIIII[BIII)I
    .locals 0

    .line 172
    invoke-static/range {p0 .. p11}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceFigureSeg(J[BIIIII[BIII)I

    move-result p0

    return p0
.end method

.method public static cvFaceFigureSegSetOuputLength(JIII[I)I
    .locals 0

    .line 163
    invoke-static/range {p0 .. p5}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceFigureSegSetOuputLength(JIII[I)I

    move-result p0

    return p0
.end method

.method public static cvFaceGetFeatureBytes(J[BIIIILcom/sensetime/faceapi/model/FaceInfo;[I)[B
    .locals 0

    .line 115
    invoke-static/range {p0 .. p8}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceGetFeatureBytes(J[BIIIILcom/sensetime/faceapi/model/FaceInfo;[I)[B

    move-result-object p0

    return-object p0
.end method

.method public static cvFaceGetFeatureInts(J[IIIIILcom/sensetime/faceapi/model/FaceInfo;[I)[B
    .locals 0

    .line 110
    invoke-static/range {p0 .. p8}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceGetFeatureInts(J[IIIIILcom/sensetime/faceapi/model/FaceInfo;[I)[B

    move-result-object p0

    return-object p0
.end method

.method public static cvFaceGetVerifyLength(J)I
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceGetVerifyLength(J)I

    move-result p0

    return p0
.end method

.method public static cvFaceGetVerifyVersion(J)I
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceGetVerifyVersion(J)I

    move-result p0

    return p0
.end method

.method public static cvFaceHackness(J[BIIIIILcom/sensetime/faceapi/model/FaceInfo;[I)F
    .locals 0

    .line 187
    invoke-static/range {p0 .. p9}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceHackness(J[BIIIIILcom/sensetime/faceapi/model/FaceInfo;[I)F

    move-result p0

    return p0
.end method

.method public static cvFaceResetTracker(J)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceResetTracker(J)V

    return-void
.end method

.method public static cvFaceShowInsideModel()V
    .locals 0

    .line 54
    invoke-static {}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceShowInsideModel()V

    return-void
.end method

.method public static cvFaceTrackBytes(J[BIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 0

    .line 67
    invoke-static/range {p0 .. p8}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceTrackBytes(J[BIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static cvFaceTrackInts(J[IIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 0

    .line 72
    invoke-static/range {p0 .. p8}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceTrackInts(J[IIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static cvFaceTrackSetDetectFaceCntLimit(JI)I
    .locals 0

    .line 80
    invoke-static {p0, p1, p2}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceTrackSetDetectFaceCntLimit(JI)I

    move-result p0

    return p0
.end method

.method public static cvFaceTrackSetDetectInterval(JI)I
    .locals 0

    .line 84
    invoke-static {p0, p1, p2}, Lcom/sensetime/faceapi/FaceLibrary;->cvFaceTrackSetDetectInterval(JI)I

    move-result p0

    return p0
.end method

.method public static faceBrightEvaluate([BIIIIIIIII)I
    .locals 0

    .line 213
    invoke-static/range {p0 .. p9}, Lcom/sensetime/faceapi/FaceLibrary;->faceBrightEvaluate([BIIIIIIIII)I

    move-result p0

    return p0
.end method

.method public static getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V
    .locals 0

    .line 200
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V

    return-void
.end method

.method public static getBGRDataFromBitmap(Landroid/graphics/Bitmap;[B)V
    .locals 0

    .line 204
    invoke-static {p0, p1}, Lcom/sensetime/faceapi/FaceLibrary;->getBGRDataFromBitmap(Landroid/graphics/Bitmap;[B)V

    return-void
.end method

.method public static getDetectThreshold(J[I)F
    .locals 0

    .line 35
    invoke-static {p0, p1, p2}, Lcom/sensetime/faceapi/FaceLibrary;->getDetectThreshold(J[I)F

    move-result p0

    return p0
.end method

.method public static getRepresentative(JII[I[I)V
    .locals 0

    .line 151
    invoke-static/range {p0 .. p5}, Lcom/sensetime/faceapi/FaceLibrary;->getRepresentative(JII[I[I)V

    return-void
.end method

.method public static initLiscence([B)I
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/sensetime/faceapi/FaceLibrary;->initLiscence([B)I

    move-result p0

    return p0
.end method

.method public static initLiscenceStr(Ljava/lang/String;)I
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/sensetime/faceapi/FaceLibrary;->initLiscenceStr(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/sensetime/faceapi/FaceLibrary;->setDebug(Z)V

    return-void
.end method

.method public static setDetectThreshold(JF[I)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/sensetime/faceapi/FaceLibrary;->setDetectThreshold(JF[I)V

    return-void
.end method
