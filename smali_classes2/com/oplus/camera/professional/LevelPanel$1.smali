.class Lcom/oplus/camera/professional/LevelPanel$1;
.super Ljava/lang/Object;
.source "LevelPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/LevelPanel;->a(ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/professional/LevelPanel;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/LevelPanel;I)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/oplus/camera/professional/LevelPanel$1;->b:Lcom/oplus/camera/professional/LevelPanel;

    iput p2, p0, Lcom/oplus/camera/professional/LevelPanel$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$1;->b:Lcom/oplus/camera/professional/LevelPanel;

    iget-object v0, v0, Lcom/oplus/camera/professional/LevelPanel;->f:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    iget v1, p0, Lcom/oplus/camera/professional/LevelPanel$1;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->scrollTo(I)V

    .line 261
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$1;->b:Lcom/oplus/camera/professional/LevelPanel;

    iget-object v1, v0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/professional/LevelPanel;->a(Lcom/oplus/camera/professional/LevelPanel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/professional/LevelPanel;->b(Lcom/oplus/camera/professional/LevelPanel;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$1;->b:Lcom/oplus/camera/professional/LevelPanel;

    invoke-static {v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Lcom/oplus/camera/professional/LevelPanel;)Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$1;->b:Lcom/oplus/camera/professional/LevelPanel;

    invoke-static {v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Lcom/oplus/camera/professional/LevelPanel;)Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/LevelPanel$1;->a:I

    invoke-interface {v0, p0}, Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;->onAutoValueChange(I)V

    :cond_0
    return-void
.end method
