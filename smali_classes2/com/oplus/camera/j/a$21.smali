.class Lcom/oplus/camera/j/a$21;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->h(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/oplus/camera/j/a$21;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 568
    iget-object p1, p0, Lcom/oplus/camera/j/a$21;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->c(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/j/a$21;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->c(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/oplus/camera/j/a$21;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->c(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 570
    iget-object p0, p0, Lcom/oplus/camera/j/a$21;->a:Lcom/oplus/camera/j/a;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method
