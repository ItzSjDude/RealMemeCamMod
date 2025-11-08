.class Lcom/oplus/camera/professional/LevelPanel$4;
.super Ljava/lang/Object;
.source "LevelPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/LevelPanel;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/LevelPanel;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/oplus/camera/professional/LevelPanel$4;->a:Lcom/oplus/camera/professional/LevelPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 600
    iget-object p1, p0, Lcom/oplus/camera/professional/LevelPanel$4;->a:Lcom/oplus/camera/professional/LevelPanel;

    invoke-static {p1}, Lcom/oplus/camera/professional/LevelPanel;->a(Lcom/oplus/camera/professional/LevelPanel;)Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 601
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel$4;->a:Lcom/oplus/camera/professional/LevelPanel;

    invoke-static {p0}, Lcom/oplus/camera/professional/LevelPanel;->a(Lcom/oplus/camera/professional/LevelPanel;)Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;->onAutoButtonClick()V

    :cond_0
    return-void
.end method
