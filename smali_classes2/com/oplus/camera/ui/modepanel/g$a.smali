.class public Lcom/oplus/camera/ui/modepanel/g$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/modepanel/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/g;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/modepanel/g;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/g$a;->a:Lcom/oplus/camera/ui/modepanel/g;

    .line 65
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901f6

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/g$a;->b:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/g$a;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/g$a;->b:Landroid/widget/TextView;

    return-object p0
.end method
