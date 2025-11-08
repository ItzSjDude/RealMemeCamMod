.class Lcom/oplus/camera/ui/d$4;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1183
    iput-object p1, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903c0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f0903c3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->ex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    iget-object p1, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/g;->o()V

    .line 1191
    iget-object p1, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/d;->Q(Z)V

    .line 1192
    iget-object p0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/g;->c()Z

    move-result p1

    invoke-virtual {p0, v2, v3, p1}, Lcom/oplus/camera/ui/d;->d(ZZZ)V

    return-void

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->D(Lcom/oplus/camera/ui/d;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1198
    iget-object p0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->D(Lcom/oplus/camera/ui/d;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1204
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->ex()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1205
    iget-object v0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/g;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1206
    iget-object p1, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/g;->o()V

    .line 1207
    iget-object p1, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/d;->Q(Z)V

    .line 1208
    iget-object p0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/g;->c()Z

    move-result p1

    invoke-virtual {p0, v2, v3, p1}, Lcom/oplus/camera/ui/d;->d(ZZZ)V

    return-void

    .line 1213
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->D(Lcom/oplus/camera/ui/d;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1214
    iget-object p0, p0, Lcom/oplus/camera/ui/d$4;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->D(Lcom/oplus/camera/ui/d;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method
