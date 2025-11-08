.class Lcom/oplus/camera/ui/d$54;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/camerascreenhint/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
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

    .line 724
    iput-object p1, p0, Lcom/oplus/camera/ui/d$54;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/oplus/camera/ui/d$54;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    iget-object p0, p0, Lcom/oplus/camera/ui/d$54;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->n()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(I)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/oplus/camera/ui/d$54;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/oplus/camera/ui/d$54;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$54;->a:Lcom/oplus/camera/ui/d;

    const-string v1, "pref_ai_scene_key"

    .line 736
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/d;->j(Ljava/lang/String;)Z

    move-result p0

    .line 735
    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/ui/preview/a;->a(ZZ)V

    :cond_1
    return-void
.end method
