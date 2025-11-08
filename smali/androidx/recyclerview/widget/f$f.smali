.class Landroidx/recyclerview/widget/f$f;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput p1, p0, Landroidx/recyclerview/widget/f$f;->a:I

    .line 582
    iput p2, p0, Landroidx/recyclerview/widget/f$f;->b:I

    .line 583
    iput p3, p0, Landroidx/recyclerview/widget/f$f;->c:I

    .line 584
    iput p4, p0, Landroidx/recyclerview/widget/f$f;->d:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 588
    iget v0, p0, Landroidx/recyclerview/widget/f$f;->b:I

    iget p0, p0, Landroidx/recyclerview/widget/f$f;->a:I

    sub-int/2addr v0, p0

    return v0
.end method

.method b()I
    .locals 1

    .line 592
    iget v0, p0, Landroidx/recyclerview/widget/f$f;->d:I

    iget p0, p0, Landroidx/recyclerview/widget/f$f;->c:I

    sub-int/2addr v0, p0

    return v0
.end method
