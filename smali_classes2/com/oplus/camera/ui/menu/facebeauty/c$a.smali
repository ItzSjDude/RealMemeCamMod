.class public Lcom/oplus/camera/ui/menu/facebeauty/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "FaceBeautyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/facebeauty/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/facebeauty/c;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/c;Landroid/view/View;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a:Lcom/oplus/camera/ui/menu/facebeauty/c;

    .line 437
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 434
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->b:Landroid/util/SparseArray;

    .line 439
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 448
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Lcom/oplus/camera/ui/menu/facebeauty/c;)Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Lcom/oplus/camera/ui/menu/facebeauty/c;)Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->a:Lcom/oplus/camera/ui/menu/facebeauty/c;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/c;->a(Lcom/oplus/camera/ui/menu/facebeauty/c;)Lcom/oplus/camera/ui/menu/facebeauty/f$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/c$a;->getLayoutPosition()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/oplus/camera/ui/menu/facebeauty/f$a;->a(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
