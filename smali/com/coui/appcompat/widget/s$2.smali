.class Lcom/coui/appcompat/widget/s$2;
.super Ljava/lang/Object;
.source "COUIToolTips.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/s;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/s;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/coui/appcompat/widget/s$2;->a:Lcom/coui/appcompat/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/coui/appcompat/widget/s$2;->a:Lcom/coui/appcompat/widget/s;

    invoke-static {p0}, Lcom/coui/appcompat/widget/s;->c(Lcom/coui/appcompat/widget/s;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
