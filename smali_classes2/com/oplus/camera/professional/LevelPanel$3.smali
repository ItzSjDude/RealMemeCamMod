.class Lcom/oplus/camera/professional/LevelPanel$3;
.super Ljava/lang/Object;
.source "LevelPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/LevelPanel;->a(ILandroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/oplus/camera/professional/LevelPanel;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/LevelPanel;ILjava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/oplus/camera/professional/LevelPanel$3;->c:Lcom/oplus/camera/professional/LevelPanel;

    iput p2, p0, Lcom/oplus/camera/professional/LevelPanel$3;->a:I

    iput-object p3, p0, Lcom/oplus/camera/professional/LevelPanel$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$3;->c:Lcom/oplus/camera/professional/LevelPanel;

    iget-object v0, v0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    iget v1, p0, Lcom/oplus/camera/professional/LevelPanel$3;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->scrollTo(I)V

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$3;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/oplus/camera/professional/LevelPanel$3;->c:Lcom/oplus/camera/professional/LevelPanel;

    invoke-static {v1, v0}, Lcom/oplus/camera/professional/LevelPanel;->b(Lcom/oplus/camera/professional/LevelPanel;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$3;->c:Lcom/oplus/camera/professional/LevelPanel;

    iget-object v1, v0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/professional/LevelPanel$3;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/professional/LevelPanel;->b(Lcom/oplus/camera/professional/LevelPanel;Ljava/lang/String;)V

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$3;->c:Lcom/oplus/camera/professional/LevelPanel;

    invoke-static {v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Lcom/oplus/camera/professional/LevelPanel;)Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$3;->c:Lcom/oplus/camera/professional/LevelPanel;

    invoke-static {v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Lcom/oplus/camera/professional/LevelPanel;)Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/LevelPanel$3;->a:I

    invoke-interface {v0, p0}, Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;->onManualValueChange(I)V

    :cond_1
    return-void
.end method
