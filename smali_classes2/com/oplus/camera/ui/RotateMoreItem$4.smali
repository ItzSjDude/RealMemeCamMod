.class Lcom/oplus/camera/ui/RotateMoreItem$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RotateMoreItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/RotateMoreItem;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/RotateMoreItem;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/RotateMoreItem;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem$4;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem$4;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->a(Lcom/oplus/camera/ui/RotateMoreItem;Z)Z

    .line 195
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem$4;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-static {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->a(Lcom/oplus/camera/ui/RotateMoreItem;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem$4;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/RotateMoreItem;->a(Lcom/oplus/camera/ui/RotateMoreItem;Z)Z

    return-void
.end method
