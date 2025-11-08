.class Lcom/oplus/camera/professional/r$5;
.super Ljava/lang/Object;
.source "ProMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/r;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/r;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/oplus/camera/professional/r$5;->a:Lcom/oplus/camera/professional/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/oplus/camera/professional/r$5;->a:Lcom/oplus/camera/professional/r;

    invoke-static {v0}, Lcom/oplus/camera/professional/r;->c(Lcom/oplus/camera/professional/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/r$5;->a:Lcom/oplus/camera/professional/r;

    invoke-static {v0}, Lcom/oplus/camera/professional/r;->d(Lcom/oplus/camera/professional/r;)V

    .line 1057
    iget-object p0, p0, Lcom/oplus/camera/professional/r$5;->a:Lcom/oplus/camera/professional/r;

    invoke-static {p0}, Lcom/oplus/camera/professional/r;->e(Lcom/oplus/camera/professional/r;)V

    return-void
.end method
