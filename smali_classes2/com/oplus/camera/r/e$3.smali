.class Lcom/oplus/camera/r/e$3;
.super Ljava/lang/Object;
.source "SLVFps960Mode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/r/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/r/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/r/e;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/oplus/camera/r/e$3;->a:Lcom/oplus/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/r/e$3;->a:Lcom/oplus/camera/r/e;

    invoke-static {v0}, Lcom/oplus/camera/r/e;->a(Lcom/oplus/camera/r/e;)Lcom/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/r/e$3;->a:Lcom/oplus/camera/r/e;

    invoke-static {v0}, Lcom/oplus/camera/r/e;->a(Lcom/oplus/camera/r/e;)Lcom/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a;->b()V

    .line 136
    iget-object p0, p0, Lcom/oplus/camera/r/e$3;->a:Lcom/oplus/camera/r/e;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/r/e;->a(Lcom/oplus/camera/r/e;Lcom/c/a;)Lcom/c/a;

    const-string p0, "SLVFps960Mode"

    const-string v0, "exit, releaseMeicamVideoEngine"

    .line 138
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
