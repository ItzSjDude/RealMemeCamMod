.class Lcom/oplus/camera/ui/d$58;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->fD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 10320
    iput-object p1, p0, Lcom/oplus/camera/ui/d$58;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 10330
    iget-object p1, p0, Lcom/oplus/camera/ui/d$58;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10331
    iget-object p1, p0, Lcom/oplus/camera/ui/d$58;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->aS()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    .line 10334
    iget-object v0, p0, Lcom/oplus/camera/ui/d$58;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aU()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10335
    iget-object p0, p0, Lcom/oplus/camera/ui/d$58;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->m(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a/b;)V
    .locals 0

    return-void
.end method
