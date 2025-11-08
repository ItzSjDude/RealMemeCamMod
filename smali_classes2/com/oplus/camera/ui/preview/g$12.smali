.class Lcom/oplus/camera/ui/preview/g$12;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->b(Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 2490
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$12;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 2494
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 2495
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$12;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->ac(Lcom/oplus/camera/ui/preview/g;)Lcom/coui/appcompat/dialog/app/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
