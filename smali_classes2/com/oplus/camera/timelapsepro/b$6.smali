.class Lcom/oplus/camera/timelapsepro/b$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ParameterContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/b;->a(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:F

.field final synthetic e:Z

.field final synthetic f:Lcom/oplus/camera/timelapsepro/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/b;Landroid/view/View;ZZFZ)V
    .locals 0

    .line 1262
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->f:Lcom/oplus/camera/timelapsepro/b;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/oplus/camera/timelapsepro/b$6;->b:Z

    iput-boolean p4, p0, Lcom/oplus/camera/timelapsepro/b$6;->c:Z

    iput p5, p0, Lcom/oplus/camera/timelapsepro/b$6;->d:F

    iput-boolean p6, p0, Lcom/oplus/camera/timelapsepro/b$6;->e:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 1282
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->b:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1283
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1284
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1286
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1287
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->c:Z

    if-eqz p1, :cond_1

    .line 1291
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1292
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1295
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/b$6;->e:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1296
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->f:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;Z)Z

    .line 1297
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$6;->f:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->u(Lcom/oplus/camera/timelapsepro/b;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1302
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->b:Z

    if-nez p1, :cond_0

    .line 1303
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1306
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/b$6;->e:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1307
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1308
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1309
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->f:Lcom/oplus/camera/timelapsepro/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;Z)Z

    .line 1310
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$6;->f:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->u(Lcom/oplus/camera/timelapsepro/b;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1265
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->f:Lcom/oplus/camera/timelapsepro/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;Z)Z

    .line 1266
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcom/oplus/camera/timelapsepro/b$6;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1268
    iget-boolean p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->c:Z

    if-eqz p1, :cond_4

    .line 1269
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->f:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->t(Lcom/oplus/camera/timelapsepro/b;)I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 1270
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/b$6;->b:Z

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/oplus/camera/timelapsepro/b$6;->d:F

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 1272
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/oplus/camera/timelapsepro/b$6;->b:Z

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/oplus/camera/timelapsepro/b$6;->d:F

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1276
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$6;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
