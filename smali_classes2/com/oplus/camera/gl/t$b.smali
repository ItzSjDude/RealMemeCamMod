.class public Lcom/oplus/camera/gl/t$b;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static c:Ljava/lang/String; = "capture_blur"

.field public static d:Ljava/lang/String; = "capture_thumbnail"

.field public static e:Ljava/lang/String; = "capture_exit"

.field public static f:Ljava/lang/String; = "capture_origin"


# instance fields
.field public g:Z

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1422
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t$b;->g:Z

    .line 1423
    iput-boolean v0, p0, Lcom/oplus/camera/gl/t$b;->h:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
