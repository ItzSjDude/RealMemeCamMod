.class Lcom/oplus/camera/r/e$2;
.super Ljava/lang/Object;
.source "SLVFps960Mode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/r/e;->f()V
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

    .line 111
    iput-object p1, p0, Lcom/oplus/camera/r/e$2;->a:Lcom/oplus/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/r/e$2;->a:Lcom/oplus/camera/r/e;

    invoke-static {v0}, Lcom/oplus/camera/r/e;->a(Lcom/oplus/camera/r/e;)Lcom/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/r/e$2;->a:Lcom/oplus/camera/r/e;

    new-instance v1, Lcom/c/a;

    iget-object v2, v0, Lcom/oplus/camera/r/e;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/oplus/camera/r/e$2;->a:Lcom/oplus/camera/r/e;

    invoke-static {p0}, Lcom/oplus/camera/r/e;->d(Lcom/oplus/camera/r/e;)Lcom/c/b;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/c/a;-><init>(Landroid/app/Activity;Lcom/c/b;)V

    invoke-static {v0, v1}, Lcom/oplus/camera/r/e;->a(Lcom/oplus/camera/r/e;Lcom/c/a;)Lcom/c/a;

    :cond_0
    return-void
.end method
