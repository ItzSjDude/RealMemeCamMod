.class Lcom/oplus/camera/ui/preview/u$2;
.super Lcom/oplus/camera/b/a;
.source "PIAISceneUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/u;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/u;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/u;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/u$2;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u$2;->a:Lcom/oplus/camera/ui/preview/u;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/u;->b(Lcom/oplus/camera/ui/preview/u;I)V

    return-void
.end method
