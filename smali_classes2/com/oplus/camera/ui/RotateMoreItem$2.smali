.class Lcom/oplus/camera/ui/RotateMoreItem$2;
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

    .line 161
    iput-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem$2;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem$2;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    invoke-static {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->a(Lcom/oplus/camera/ui/RotateMoreItem;)Landroid/graphics/Paint;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem$2;->a:Lcom/oplus/camera/ui/RotateMoreItem;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/RotateMoreItem;->a(Lcom/oplus/camera/ui/RotateMoreItem;Z)Z

    return-void
.end method
