.class Landroidx/recyclerview/widget/f$c;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput p1, p0, Landroidx/recyclerview/widget/f$c;->a:I

    .line 483
    iput p2, p0, Landroidx/recyclerview/widget/f$c;->b:I

    .line 484
    iput p3, p0, Landroidx/recyclerview/widget/f$c;->c:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 488
    iget v0, p0, Landroidx/recyclerview/widget/f$c;->a:I

    iget p0, p0, Landroidx/recyclerview/widget/f$c;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method b()I
    .locals 1

    .line 492
    iget v0, p0, Landroidx/recyclerview/widget/f$c;->b:I

    iget p0, p0, Landroidx/recyclerview/widget/f$c;->c:I

    add-int/2addr v0, p0

    return v0
.end method
