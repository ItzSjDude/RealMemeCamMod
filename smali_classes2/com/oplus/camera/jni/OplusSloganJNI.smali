.class public Lcom/oplus/camera/jni/OplusSloganJNI;
.super Ljava/lang/Object;
.source "OplusSloganJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native setSloganBuffer([BIIILjava/lang/String;)I
.end method

.method public native sloganFileDelete(Ljava/lang/String;)I
.end method

.method public native sloganFileDeleteAll()I
.end method

.method public native sloganFileExist(Ljava/lang/String;)I
.end method
