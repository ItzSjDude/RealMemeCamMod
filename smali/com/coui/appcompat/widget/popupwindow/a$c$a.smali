.class Lcom/coui/appcompat/widget/popupwindow/a$c$a;
.super Ljava/lang/Object;
.source "COUIBaseListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/popupwindow/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/popupwindow/a$c;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/popupwindow/a$c;)V
    .locals 0

    .line 1484
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/a$c$a;->a:Lcom/coui/appcompat/widget/popupwindow/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/popupwindow/a$c;Lcom/coui/appcompat/widget/popupwindow/a$1;)V
    .locals 0

    .line 1484
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/a$c$a;-><init>(Lcom/coui/appcompat/widget/popupwindow/a$c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1487
    iget-object p0, p0, Lcom/coui/appcompat/widget/popupwindow/a$c$a;->a:Lcom/coui/appcompat/widget/popupwindow/a$c;

    invoke-static {p0}, Lcom/coui/appcompat/widget/popupwindow/a$c;->a(Lcom/coui/appcompat/widget/popupwindow/a$c;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    .line 1488
    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
