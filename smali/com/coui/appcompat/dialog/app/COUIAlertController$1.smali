.class Lcom/coui/appcompat/dialog/app/COUIAlertController$1;
.super Ljava/lang/Object;
.source "COUIAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/app/COUIAlertController;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController;->a:Landroidx/appcompat/app/f;

    if-eqz p1, :cond_0

    .line 142
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->a:Landroidx/appcompat/app/f;

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->cancel()V

    :cond_0
    return-void
.end method
