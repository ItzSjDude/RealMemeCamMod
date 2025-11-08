.class Lcom/oplus/camera/util/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/Util;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string p0, "Util"

    const-string v0, "intRenderScript"

    .line 766
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/oplus/camera/util/Util;->aS()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 772
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->aT()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 773
    :try_start_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->aS()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;

    .line 774
    invoke-static {}, Lcom/oplus/camera/util/Util;->aU()Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->aU()Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/renderscript/ScriptIntrinsicBlur;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 775
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Util"

    const-string v0, "intRenderScript X"

    .line 777
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 775
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
