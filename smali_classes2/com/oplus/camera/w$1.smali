.class Lcom/oplus/camera/w$1;
.super Landroid/os/Handler;
.source "OplusPlaySound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/w;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/w;


# direct methods
.method constructor <init>(Lcom/oplus/camera/w;Landroid/os/Looper;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 93
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/w;->a(Lcom/oplus/camera/w;Z)Z

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    invoke-static {p1}, Lcom/oplus/compat/media/a;->a(I)V

    .line 99
    iget-object p0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-static {p0, v2}, Lcom/oplus/camera/w;->a(Lcom/oplus/camera/w;Z)Z

    const-string p0, "OplusPlaySound"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingerModeInternal, ringerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", take "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 76
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 78
    iget-object v0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-static {v0}, Lcom/oplus/camera/w;->a(Lcom/oplus/camera/w;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-static {v0}, Lcom/oplus/camera/w;->b(Lcom/oplus/camera/w;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-static {v0}, Lcom/oplus/camera/w;->c(Lcom/oplus/camera/w;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-static {v0}, Lcom/oplus/camera/w;->c(Lcom/oplus/camera/w;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-static {p0}, Lcom/oplus/camera/w;->b(Lcom/oplus/camera/w;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-static {v0}, Lcom/oplus/camera/w;->d(Lcom/oplus/camera/w;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    .line 84
    invoke-static {v0}, Lcom/oplus/camera/w;->b(Lcom/oplus/camera/w;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    .line 85
    invoke-static {v0}, Lcom/oplus/camera/w;->c(Lcom/oplus/camera/w;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-static {v0}, Lcom/oplus/camera/w;->c(Lcom/oplus/camera/w;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/w$1;->a:Lcom/oplus/camera/w;

    invoke-static {p0}, Lcom/oplus/camera/w;->b(Lcom/oplus/camera/w;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_3
    :goto_0
    return-void
.end method
