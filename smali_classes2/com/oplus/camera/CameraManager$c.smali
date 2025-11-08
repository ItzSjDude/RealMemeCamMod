.class public Lcom/oplus/camera/CameraManager$c;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;

.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 13230
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 13231
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$c;->b:Landroid/util/Size;

    .line 13232
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$c;->c:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 13298
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->W(Z)V

    .line 13300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchAnimEnd, Beauty3DState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->bw()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 13302
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13303
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/z;->b(Z)V

    .line 13306
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bw()I

    move-result v0

    .line 13308
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->bw()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    .line 13309
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->bw()I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    if-ne v0, v4, :cond_7

    .line 13351
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    goto/16 :goto_1

    .line 13310
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->I()V

    .line 13311
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->al()V

    .line 13313
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13314
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    .line 13317
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$c;->b:Landroid/util/Size;

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    .line 13318
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->H()V

    .line 13319
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13320
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aT(Lcom/oplus/camera/CameraManager;)V

    .line 13322
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const-string v3, "key_bubble_type_custom_beuty3d"

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    .line 13323
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bU(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    .line 13324
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->A()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    .line 13325
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/o;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 13326
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070119

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13328
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 13330
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v4, v7, v8, v0, v3}, Lcom/oplus/camera/ui/d;->a(Landroid/view/View;III)V

    .line 13333
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v6}, Lcom/oplus/camera/CameraManager;->y(Lcom/oplus/camera/CameraManager;Z)Z

    .line 13335
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13336
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 13337
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->I()Lcom/oplus/camera/ui/preview/a/p;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/ui/preview/a/p;)V

    .line 13341
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bw()I

    move-result v0

    if-ne v0, v5, :cond_7

    const-string v0, "onSwitchAnimEnd, retsetBeauty3DState"

    .line 13342
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 13344
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/oplus/camera/capmode/ModeManager;->m(I)V

    .line 13354
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v6}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 13355
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 13356
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v6}, Lcom/oplus/camera/CameraManager;->f(Z)V

    .line 13357
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v6}, Lcom/oplus/camera/CameraManager;->d(Z)V

    .line 13358
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/d;->i(Z)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 5

    .line 13236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchAnimStart, Beauty3DState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->bw()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13238
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$c;->b:Landroid/util/Size;

    .line 13239
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 13240
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/d;->i(Z)V

    .line 13242
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const-string v1, "pref_zoom_key"

    invoke-virtual {p1, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    .line 13243
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const-string v2, "pref_expand_popbar_key"

    invoke-virtual {p1, v2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13244
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/oplus/camera/CameraManager;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 13247
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->bw()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v2, 0xa

    if-eq p1, v1, :cond_5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x6

    const/16 v4, 0xe

    if-eq p1, v3, :cond_3

    const/16 v3, 0x8

    if-eq p1, v3, :cond_2

    goto :goto_1

    .line 13266
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13267
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    goto :goto_0

    .line 13255
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13256
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->R()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->switchCamera(I)V

    goto :goto_1

    .line 13260
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->H()V

    .line 13261
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 13262
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->R()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->switchCamera(I)V

    goto :goto_1

    .line 13249
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->da()V

    .line 13250
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 13251
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->R()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->switchCamera(I)V

    goto :goto_1

    .line 13270
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->ar()V

    .line 13271
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/CameraManager;->n(I)V

    :goto_1
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 2

    .line 13281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchAnimMiddle, mAfterSwitchPrvSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bL(Lcom/oplus/camera/CameraManager;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13283
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$c;->c:Landroid/util/Size;

    .line 13284
    iput-object p2, p0, Lcom/oplus/camera/CameraManager$c;->b:Landroid/util/Size;

    .line 13286
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->b:Landroid/util/Size;

    if-eqz p1, :cond_1

    .line 13287
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$c;->b:Landroid/util/Size;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p2, v0}, Lcom/oplus/camera/ui/d;->a(Landroid/util/Size;Landroid/util/Size;Z)V

    .line 13289
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->bw()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    .line 13290
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->bw()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 13291
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$c;->a:Lcom/oplus/camera/CameraManager;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$c;->b:Landroid/util/Size;

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
