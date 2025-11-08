.class Landroidx/recyclerview/widget/f$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/f$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/f$c;Landroidx/recyclerview/widget/f$c;)I
    .locals 0

    .line 90
    iget p0, p1, Landroidx/recyclerview/widget/f$c;->a:I

    iget p1, p2, Landroidx/recyclerview/widget/f$c;->a:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 87
    check-cast p1, Landroidx/recyclerview/widget/f$c;

    check-cast p2, Landroidx/recyclerview/widget/f$c;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/f$1;->a(Landroidx/recyclerview/widget/f$c;Landroidx/recyclerview/widget/f$c;)I

    move-result p0

    return p0
.end method
