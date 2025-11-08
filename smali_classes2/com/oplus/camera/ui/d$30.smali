.class Lcom/oplus/camera/ui/d$30;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 6940
    iput-object p1, p0, Lcom/oplus/camera/ui/d$30;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 6943
    iget-object p0, p0, Lcom/oplus/camera/ui/d$30;->a:Lcom/oplus/camera/ui/d;

    const/4 p1, 0x4

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/d;->f(IZ)V

    const/4 p0, 0x0

    return p0
.end method
