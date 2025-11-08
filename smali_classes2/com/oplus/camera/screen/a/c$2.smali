.class Lcom/oplus/camera/screen/a/c$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OutPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/screen/a/c;->a(Landroid/view/View;IILcom/oplus/camera/screen/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/a/c$a;

.field final synthetic b:Lcom/oplus/camera/screen/a/c;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/oplus/camera/screen/a/c;Lcom/oplus/camera/screen/a/c$a;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/oplus/camera/screen/a/c$2;->b:Lcom/oplus/camera/screen/a/c;

    iput-object p2, p0, Lcom/oplus/camera/screen/a/c$2;->a:Lcom/oplus/camera/screen/a/c$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lcom/oplus/camera/screen/a/c$2;->c:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/oplus/camera/screen/a/c$2;->c:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 210
    iget-boolean p1, p0, Lcom/oplus/camera/screen/a/c$2;->c:Z

    if-nez p1, :cond_0

    .line 211
    iget-object p0, p0, Lcom/oplus/camera/screen/a/c$2;->a:Lcom/oplus/camera/screen/a/c$a;

    invoke-interface {p0}, Lcom/oplus/camera/screen/a/c$a;->call()V

    :cond_0
    return-void
.end method
