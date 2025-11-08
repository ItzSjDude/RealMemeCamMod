.class Lcom/oplus/camera/ui/j$6;
.super Ljava/lang/Object;
.source "GalleryBottomMenuLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/j;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/j;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/j;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/oplus/camera/ui/j$6;->a:Lcom/oplus/camera/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 421
    iget-object p2, p0, Lcom/oplus/camera/ui/j$6;->a:Lcom/oplus/camera/ui/j;

    const/16 v0, 0x53

    const-string v1, "delete"

    invoke-virtual {p2, v0, v1}, Lcom/oplus/camera/ui/j;->a(ILjava/lang/String;)V

    .line 423
    iget-object p2, p0, Lcom/oplus/camera/ui/j$6;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p2}, Lcom/oplus/camera/ui/j;->d(Lcom/oplus/camera/ui/j;)Lcom/oplus/camera/ui/k;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 424
    iget-object p0, p0, Lcom/oplus/camera/ui/j$6;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p0}, Lcom/oplus/camera/ui/j;->d(Lcom/oplus/camera/ui/j;)Lcom/oplus/camera/ui/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/k;->g()V

    .line 427
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
