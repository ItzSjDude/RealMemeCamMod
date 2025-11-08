.class public Lcom/oplus/camera/util/g$a$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ExportPGrantUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/util/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/oplus/camera/util/g$a;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/util/g$a;Landroid/view/View;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/oplus/camera/util/g$a$a;->c:Lcom/oplus/camera/util/g$a;

    .line 223
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902c4

    .line 224
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/util/g$a$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0902c3

    .line 225
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/util/g$a$a;->b:Landroid/widget/TextView;

    return-void
.end method
