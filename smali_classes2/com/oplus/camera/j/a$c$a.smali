.class public final Lcom/oplus/camera/j/a$c$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "CommonBottomGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/j/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/a$c;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/j/a$c;Landroid/view/View;)V
    .locals 2

    .line 1635
    iput-object p1, p0, Lcom/oplus/camera/j/a$c$a;->a:Lcom/oplus/camera/j/a$c;

    .line 1636
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902af

    .line 1637
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/camera/j/a$c$a;->b:Landroid/widget/ImageView;

    .line 1638
    iget-object p1, p0, Lcom/oplus/camera/j/a$c$a;->b:Landroid/widget/ImageView;

    new-instance v0, Lcom/oplus/camera/j/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/j/a$a;-><init>(Lcom/oplus/camera/j/a$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const p1, 0x7f0901c7

    .line 1639
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/oplus/camera/j/a$c$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 0

    .line 1628
    iget-object p0, p0, Lcom/oplus/camera/j/a$c$a;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final b()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 1632
    iget-object p0, p0, Lcom/oplus/camera/j/a$c$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method
