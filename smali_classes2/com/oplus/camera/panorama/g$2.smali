.class Lcom/oplus/camera/panorama/g$2;
.super Landroid/os/Handler;
.source "RearPanoramaEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/g;-><init>(Landroid/content/Context;IILcom/oplus/camera/panorama/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/g;Landroid/os/Looper;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v4, 0x4

    const/16 v5, 0x700a

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    goto/16 :goto_1

    .line 139
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/Image;

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v0}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v0, v6

    .line 144
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 145
    iget-object v1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v1}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v2}, Lcom/oplus/camera/panorama/g;->g(Lcom/oplus/camera/panorama/g;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;->Process([Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 147
    invoke-static {}, Lcom/oplus/camera/util/Util;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    .line 148
    invoke-static {p1, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/media/Image;I)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v4}, Lcom/oplus/camera/panorama/g;->c(Lcom/oplus/camera/panorama/g;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    .line 150
    invoke-static {v4}, Lcom/oplus/camera/panorama/g;->d(Lcom/oplus/camera/panorama/g;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dump_rear"

    .line 148
    invoke-static {v1, v4, v2}, Lcom/oplus/camera/util/Util;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    if-ne v5, v0, :cond_2

    .line 154
    invoke-virtual {p0, v3}, Lcom/oplus/camera/panorama/g$2;->removeMessages(I)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/oplus/camera/panorama/g$2;->sendEmptyMessage(I)Z

    .line 159
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto/16 :goto_1

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v0}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v0}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v1}, Lcom/oplus/camera/panorama/g;->g(Lcom/oplus/camera/panorama/g;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;->Process([Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-ne v5, p1, :cond_a

    .line 131
    invoke-virtual {p0, v3}, Lcom/oplus/camera/panorama/g$2;->removeMessages(I)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/oplus/camera/panorama/g$2;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p1}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 121
    iget-object p0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p0}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;->StopProcessing()I

    goto/16 :goto_1

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p1}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 114
    iget-object p0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p0}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;->Uninit()V

    goto/16 :goto_1

    .line 89
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    new-instance v1, Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    invoke-static {v0}, Lcom/oplus/camera/panorama/g;->b(Lcom/oplus/camera/panorama/g;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const-string v5, "jni_burstpmk"

    invoke-direct {v1, v0, v4, v5}, Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;-><init>(Lcom/arcsoft/camera/burstpmk/BurstPMKEngine$PMKListener;Landroid/os/Looper;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v0}, Lcom/oplus/camera/panorama/g;->c(Lcom/oplus/camera/panorama/g;)I

    move-result v1

    iget-object v4, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v4}, Lcom/oplus/camera/panorama/g;->d(Lcom/oplus/camera/panorama/g;)I

    move-result v4

    const/16 v5, 0x802

    iget-object v6, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    .line 93
    invoke-static {v6}, Lcom/oplus/camera/panorama/g;->e(Lcom/oplus/camera/panorama/g;)I

    move-result v6

    .line 92
    invoke-static {v1, v4, v5, v6}, Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;->getDefaultInitParams(IIII)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    if-ne v3, p1, :cond_7

    .line 96
    iget-object p1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p1}, Lcom/oplus/camera/panorama/g;->f(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    move-result-object p1

    iput v3, p1, Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;->deviceDirection:I

    goto :goto_0

    :cond_7
    if-ne v2, p1, :cond_8

    .line 98
    iget-object p1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p1}, Lcom/oplus/camera/panorama/g;->f(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    move-result-object p1

    iput v2, p1, Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;->deviceDirection:I

    .line 101
    :cond_8
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 102
    iget-object p1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p1}, Lcom/oplus/camera/panorama/g;->f(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v0}, Lcom/oplus/camera/panorama/g;->c(Lcom/oplus/camera/panorama/g;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x40a9999a    # 5.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;->maxfullResultLength:I

    .line 103
    iget-object p1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p1}, Lcom/oplus/camera/panorama/g;->f(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v0}, Lcom/oplus/camera/panorama/g;->f(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    move-result-object v0

    iget v0, v0, Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;->maxfullResultLength:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p1, Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;->thumbnailResultHeightV:I

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage, maxfullResultLength: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {v0}, Lcom/oplus/camera/panorama/g;->f(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    move-result-object v0

    iget v0, v0, Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;->maxfullResultLength:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", thumbnailResultHeightV: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    .line 106
    invoke-static {v0}, Lcom/oplus/camera/panorama/g;->f(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    move-result-object v0

    iget v0, v0, Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;->thumbnailResultHeightV:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RearPanoramaEngine"

    .line 105
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p1}, Lcom/oplus/camera/panorama/g;->a(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/panorama/g$2;->a:Lcom/oplus/camera/panorama/g;

    invoke-static {p0}, Lcom/oplus/camera/panorama/g;->f(Lcom/oplus/camera/panorama/g;)Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/arcsoft/camera/burstpmk/BurstPMKEngine;->Init(Lcom/arcsoft/camera/burstpmk/BurstPMKInitParameter;)I

    :cond_a
    :goto_1
    return-void
.end method
