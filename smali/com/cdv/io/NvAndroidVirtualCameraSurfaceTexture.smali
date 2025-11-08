.class public Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;
.super Ljava/lang/Object;
.source "NvAndroidVirtualCameraSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Virtual Camera"


# instance fields
.field private m_surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_texId:I


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_texId:I

    .line 32
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private static native notifyCameraFrameAvailable(I)V
.end method


# virtual methods
.method public attachToGLContext(I)V
    .locals 1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 52
    iput p1, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_texId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Virtual Camera"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public detachFromGLContext()V
    .locals 2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_texId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Virtual Camera"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public expendCacheTexImage()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Virtual Camera"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 91
    iget p0, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_texId:I

    invoke-static {p0}, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->notifyCameraFrameAvailable(I)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 85
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public setupOnFrameAvailableListener(Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :goto_0
    return-void
.end method
