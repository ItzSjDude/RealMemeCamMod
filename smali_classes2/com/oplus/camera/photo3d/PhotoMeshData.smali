.class public Lcom/oplus/camera/photo3d/PhotoMeshData;
.super Ljava/lang/Object;
.source "PhotoMeshData.java"


# instance fields
.field public mColorsBuffer:[B

.field public mFacesBuffer:[I

.field public mLabels:[B

.field public mRotated:Z

.field public mStride:I

.field public mTextureData:[B

.field public mVerticesBuffer:[F

.field public mbMainObjectOnRight:Z

.field public mbPortraitDirection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "3DPhotoMesh"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMeshData(J)Lcom/oplus/camera/photo3d/PhotoMeshData;
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/oplus/camera/photo3d/PhotoMeshData;->nativeGetMeshData(J)Lcom/oplus/camera/photo3d/PhotoMeshData;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeGetMeshData(J)Lcom/oplus/camera/photo3d/PhotoMeshData;
.end method

.method private static native nativeReleaseMeshData(J)V
.end method

.method public static release(J)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/oplus/camera/photo3d/PhotoMeshData;->nativeReleaseMeshData(J)V

    return-void
.end method
