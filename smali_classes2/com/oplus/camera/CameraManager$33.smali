.class Lcom/oplus/camera/CameraManager$33;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 7832
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 0

    .line 7844
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;II)I

    move-result p0

    return p0
.end method

.method public a(IIIIIZJ)Lcom/oplus/camera/u/a;
    .locals 7

    .line 7887
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object p4

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p4}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/camera/capmode/ModeManager;->bW()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 7888
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move-wide v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/u/d;->a(IIIIJ)Z

    goto :goto_0

    .line 7891
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/u/a;)V

    :goto_0
    return-object p6
.end method

.method public a(I)V
    .locals 1

    .line 7922
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7923
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IIZZZZZZI)V
    .locals 13

    move-object v0, p0

    move v12, p1

    .line 7908
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7909
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    const/4 v11, 0x1

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/oplus/camera/ui/d;->a(IIZZZZZZIZ)V

    .line 7913
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    if-eqz v1, :cond_2

    const v1, 0x7f100130

    if-eq v1, v12, :cond_1

    const v1, 0x7f1005f1

    if-ne v1, v12, :cond_2

    .line 7916
    :cond_1
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/d;->t(I)V

    :cond_2
    return-void
.end method

.method public a(Lcom/oplus/camera/u/a;)V
    .locals 1

    .line 7899
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7900
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/u/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 7835
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7836
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a()[Landroid/graphics/Rect;
    .locals 1

    .line 7849
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7850
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->dB()[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 7872
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7873
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$33$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$33$2;-><init>(Lcom/oplus/camera/CameraManager$33;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 7858
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7859
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$33;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$33$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/CameraManager$33$1;-><init>(Lcom/oplus/camera/CameraManager$33;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
