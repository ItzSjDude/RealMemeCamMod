.class Lcom/coui/appcompat/widget/o$b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUISpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/o$b;

.field private final b:Lcom/coui/appcompat/widget/popupwindow/e;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/o$b;Lcom/coui/appcompat/widget/popupwindow/e;)V
    .locals 0

    .line 1164
    iput-object p1, p0, Lcom/coui/appcompat/widget/o$b$a;->a:Lcom/coui/appcompat/widget/o$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1165
    iput-object p2, p0, Lcom/coui/appcompat/widget/o$b$a;->b:Lcom/coui/appcompat/widget/popupwindow/e;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1170
    iget-object p1, p0, Lcom/coui/appcompat/widget/o$b$a;->a:Lcom/coui/appcompat/widget/o$b;

    iget-object p1, p1, Lcom/coui/appcompat/widget/o$b;->b:Lcom/coui/appcompat/widget/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/widget/o;->a(Lcom/coui/appcompat/widget/o;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1171
    iget-object p0, p0, Lcom/coui/appcompat/widget/o$b$a;->b:Lcom/coui/appcompat/widget/popupwindow/e;

    if-eqz p0, :cond_0

    .line 1172
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/e;->b()V

    :cond_0
    return-void
.end method
