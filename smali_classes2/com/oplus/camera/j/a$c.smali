.class public Lcom/oplus/camera/j/a$c;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "CommonBottomGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/j/a$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oplus/camera/j/a$c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method public constructor <init>([I[I)V
    .locals 1

    .line 1599
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    .line 1596
    iput-object v0, p0, Lcom/oplus/camera/j/a$c;->a:[I

    .line 1597
    iput-object v0, p0, Lcom/oplus/camera/j/a$c;->b:[I

    .line 1600
    iput-object p1, p0, Lcom/oplus/camera/j/a$c;->a:[I

    .line 1601
    iput-object p2, p0, Lcom/oplus/camera/j/a$c;->b:[I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/j/a$c$a;
    .locals 2

    .line 1606
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c012e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1607
    new-instance p2, Lcom/oplus/camera/j/a$c$a;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/j/a$c$a;-><init>(Lcom/oplus/camera/j/a$c;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/oplus/camera/j/a$c$a;I)V
    .locals 3

    .line 1612
    invoke-virtual {p1}, Lcom/oplus/camera/j/a$c$a;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1613
    invoke-virtual {p1}, Lcom/oplus/camera/j/a$c$a;->a()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/j/a$c;->b:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1614
    invoke-virtual {p1}, Lcom/oplus/camera/j/a$c$a;->a()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/j/a$c;->a:[I

    aget v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1615
    invoke-virtual {p1}, Lcom/oplus/camera/j/a$c$a;->b()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/j/a$c;->a:[I

    aget p0, p0, p2

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 1620
    iget-object p0, p0, Lcom/oplus/camera/j/a$c;->a:[I

    array-length p0, p0

    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1595
    check-cast p1, Lcom/oplus/camera/j/a$c$a;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/j/a$c;->a(Lcom/oplus/camera/j/a$c$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 1595
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/j/a$c;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/j/a$c$a;

    move-result-object p0

    return-object p0
.end method
