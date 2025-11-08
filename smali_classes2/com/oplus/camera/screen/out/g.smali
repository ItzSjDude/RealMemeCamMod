.class public Lcom/oplus/camera/screen/out/g;
.super Ljava/lang/Object;
.source "RenderConst.java"


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 5
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oplus/camera/screen/out/g;->a:[F

    .line 11
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oplus/camera/screen/out/g;->b:[F

    .line 17
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/oplus/camera/screen/out/g;->c:[F

    .line 23
    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/oplus/camera/screen/out/g;->d:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
