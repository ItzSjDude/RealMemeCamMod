.class Lcom/oplus/camera/j/a$15;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->r(Landroid/app/Activity;)Landroid/app/Dialog;
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

    .line 1515
    iput-object p1, p0, Lcom/oplus/camera/j/a$15;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1518
    iget-object p1, p0, Lcom/oplus/camera/j/a$15;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->p(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/j/a$15;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->p(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1519
    iget-object p1, p0, Lcom/oplus/camera/j/a$15;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->p(Lcom/oplus/camera/j/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1520
    iget-object p0, p0, Lcom/oplus/camera/j/a$15;->a:Lcom/oplus/camera/j/a;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/j/a;->c(Lcom/oplus/camera/j/a;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method
