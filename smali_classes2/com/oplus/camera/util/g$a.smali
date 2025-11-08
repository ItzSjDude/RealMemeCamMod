.class Lcom/oplus/camera/util/g$a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "ExportPGrantUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/util/g$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oplus/camera/util/g$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/oplus/camera/util/g$a;->a:Landroid/content/Context;

    .line 195
    iput-object p2, p0, Lcom/oplus/camera/util/g$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/util/g$a$a;
    .locals 2

    .line 200
    iget-object p2, p0, Lcom/oplus/camera/util/g$a;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 202
    new-instance p2, Lcom/oplus/camera/util/g$a$a;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/util/g$a$a;-><init>(Lcom/oplus/camera/util/g$a;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/oplus/camera/util/g$a$a;I)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/util/g$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/camera/util/g$a;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/util/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/oplus/camera/util/g$a;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/camera/util/g$a;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/oplus/camera/util/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 209
    iget-object p2, p1, Lcom/oplus/camera/util/g$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p1, p1, Lcom/oplus/camera/util/g$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/oplus/camera/util/g$a;->b:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 189
    check-cast p1, Lcom/oplus/camera/util/g$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/util/g$a;->a(Lcom/oplus/camera/util/g$a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/util/g$a;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/util/g$a$a;

    move-result-object p0

    return-object p0
.end method
