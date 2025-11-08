.class Lcom/oplus/camera/ui/menu/facebeauty/c$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceBeautyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/c;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/ui/menu/facebeauty/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/c;Landroid/view/View;Z)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$1;->c:Lcom/oplus/camera/ui/menu/facebeauty/c;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$1;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$1;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$1;->a:Landroid/view/View;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$1;->b:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
