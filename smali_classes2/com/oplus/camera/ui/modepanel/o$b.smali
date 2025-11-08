.class public Lcom/oplus/camera/ui/modepanel/o$b;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "MoreModeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/modepanel/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/o;

.field private b:Lcom/oplus/camera/ui/RotateMoreItem;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/modepanel/o;Landroid/view/View;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/o$b;->a:Lcom/oplus/camera/ui/modepanel/o;

    .line 134
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const p1, 0x7f09025d

    .line 135
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/RotateMoreItem;

    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/o$b;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    .line 136
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/modepanel/o$b;)Lcom/oplus/camera/ui/RotateMoreItem;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/o$b;->b:Lcom/oplus/camera/ui/RotateMoreItem;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/o$b;->a:Lcom/oplus/camera/ui/modepanel/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/o;->a(Lcom/oplus/camera/ui/modepanel/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/o$b;->a:Lcom/oplus/camera/ui/modepanel/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/o;->b(Lcom/oplus/camera/ui/modepanel/o;)Lcom/oplus/camera/ui/modepanel/o$a;

    move-result-object p0

    const v0, 0x7f090396

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/modepanel/k;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/k;->b()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/modepanel/o$a;->a(I)V

    :cond_0
    return-void
.end method
