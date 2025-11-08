.class public Lorg/andresoviedo/a/c/a;
.super Ljava/lang/Object;
.source "Math3DUtils.java"


# static fields
.field public static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 15
    new-array v0, v0, [F

    sput-object v0, Lorg/andresoviedo/a/c/a;->a:[F

    .line 18
    sget-object v0, Lorg/andresoviedo/a/c/a;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method
