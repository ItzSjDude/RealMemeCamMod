.class Lcom/coui/appcompat/dialog/panel/d$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIPanelAdjustResizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/d;->b(Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/coui/appcompat/dialog/panel/d;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/d;Landroid/view/View;I)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/d$5;->c:Lcom/coui/appcompat/dialog/panel/d;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/d$5;->a:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/dialog/panel/d$5;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 409
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/d$5;->a:Landroid/view/View;

    iget p0, p0, Lcom/coui/appcompat/dialog/panel/d$5;->b:I

    const/4 v0, 0x3

    invoke-static {p1, p0, v0}, Lcom/coui/appcompat/a/y;->a(Landroid/view/View;II)V

    return-void
.end method
