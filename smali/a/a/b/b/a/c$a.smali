.class public La/a/b/b/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(La/a/b/b/a/c;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, La/a/b/b/a/c$a;->a:I

    iput p1, p0, La/a/b/b/a/c$a;->b:I

    iput p1, p0, La/a/b/b/a/c$a;->c:I

    iput p1, p0, La/a/b/b/a/c$a;->d:I

    iput p2, p0, La/a/b/b/a/c$a;->a:I

    iput p3, p0, La/a/b/b/a/c$a;->b:I

    iput p4, p0, La/a/b/b/a/c$a;->c:I

    iput p5, p0, La/a/b/b/a/c$a;->d:I

    return-void
.end method
