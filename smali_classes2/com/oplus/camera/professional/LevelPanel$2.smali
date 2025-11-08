.class Lcom/oplus/camera/professional/LevelPanel$2;
.super Ljava/lang/Object;
.source "LevelPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/LevelPanel;->b(ILandroid/app/Activity;)V
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

    .line 273
    iput-object p1, p0, Lcom/oplus/camera/professional/LevelPanel$2;->b:Lcom/oplus/camera/professional/LevelPanel;

    iput p2, p0, Lcom/oplus/camera/professional/LevelPanel$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/professional/LevelPanel$2;->b:Lcom/oplus/camera/professional/LevelPanel;

    iget-object v1, v0, Lcom/oplus/camera/professional/LevelPanel;->b:Lcom/oplus/camera/professional/z;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v1

    iget p0, p0, Lcom/oplus/camera/professional/LevelPanel$2;->a:I

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/camera/professional/LevelPanel;->b(Lcom/oplus/camera/professional/LevelPanel;Ljava/lang/String;)V

    return-void
.end method
