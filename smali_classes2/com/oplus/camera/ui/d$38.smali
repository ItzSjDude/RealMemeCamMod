.class Lcom/oplus/camera/ui/d$38;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    .line 7278
    iput-object p1, p0, Lcom/oplus/camera/ui/d$38;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 7281
    iget-object v0, p0, Lcom/oplus/camera/ui/d$38;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dh()V

    .line 7283
    iget-object p0, p0, Lcom/oplus/camera/ui/d$38;->a:Lcom/oplus/camera/ui/d;

    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/d;->f(IZ)V

    return-void
.end method
