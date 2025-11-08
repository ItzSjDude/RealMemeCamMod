.class Lcom/oplus/camera/j/a$16;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 1525
    iput-object p1, p0, Lcom/oplus/camera/j/a$16;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1528
    iget-object p0, p0, Lcom/oplus/camera/j/a$16;->a:Lcom/oplus/camera/j/a;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/j/a;->c(Lcom/oplus/camera/j/a;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
