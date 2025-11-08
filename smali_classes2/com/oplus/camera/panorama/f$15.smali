.class Lcom/oplus/camera/panorama/f$15;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->onAfterSnapping()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1139
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->at(Lcom/oplus/camera/panorama/f;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Z)V

    .line 1141
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1142
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->au(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1143
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->av(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/FrontPanoramaGuideView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oplus/camera/panorama/FrontPanoramaGuideView;->setNextDirection(I)V

    .line 1144
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/panorama/f;->c(I)V

    .line 1146
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0, v3}, Lcom/oplus/camera/panorama/f;->b(Lcom/oplus/camera/panorama/f;Z)Z

    goto :goto_2

    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object v0

    iget-object v5, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v5}, Lcom/oplus/camera/panorama/f;->aw(Lcom/oplus/camera/panorama/f;)I

    move-result v5

    invoke-virtual {v0, v5, v4, v4, v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(IIIZ)V

    .line 1149
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->clearAnimation()V

    .line 1150
    new-instance v0, Lcom/oplus/camera/ui/camerascreenhint/a$a;

    invoke-direct {v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;-><init>()V

    iget-object v5, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    .line 1151
    invoke-static {v5}, Lcom/oplus/camera/panorama/f;->ax(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10029c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    .line 1152
    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    .line 1153
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object v0

    .line 1154
    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a()Lcom/oplus/camera/ui/camerascreenhint/a;

    move-result-object v0

    .line 1155
    iget-object v4, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v4}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/a;)V

    .line 1156
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1157
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->ay(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1158
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$15;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0, v3}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;Z)Z

    :goto_2
    return-void
.end method
