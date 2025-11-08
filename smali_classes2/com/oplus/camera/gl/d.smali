.class public Lcom/oplus/camera/gl/d;
.super Lcom/oplus/camera/gl/x;
.source "BitmapTexture.java"


# instance fields
.field protected h:Landroid/graphics/Bitmap;

.field private final j:Ljava/lang/Object;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/gl/d;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p2}, Lcom/oplus/camera/gl/x;-><init>(Z)V

    .line 28
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/gl/d;->j:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcom/oplus/camera/gl/d;->k:I

    .line 38
    iget-object p2, p0, Lcom/oplus/camera/gl/d;->j:Ljava/lang/Object;

    monitor-enter p2

    .line 39
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/gl/d;->h:Landroid/graphics/Bitmap;

    .line 40
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected d_()Landroid/graphics/Bitmap;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oplus/camera/gl/d;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/gl/d;->h:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
