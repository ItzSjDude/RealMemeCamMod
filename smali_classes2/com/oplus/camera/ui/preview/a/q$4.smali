.class Lcom/oplus/camera/ui/preview/a/q$4;
.super Ljava/lang/Object;
.source "ImageStickerTools.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/app/Activity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/q;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/q;Landroid/widget/CheckBox;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$4;->b:Lcom/oplus/camera/ui/preview/a/q;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/a/q$4;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 703
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$4;->b:Lcom/oplus/camera/ui/preview/a/q;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q$4;->a:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q;Z)Z

    return-void
.end method
