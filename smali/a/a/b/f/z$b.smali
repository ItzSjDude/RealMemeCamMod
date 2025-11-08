.class public La/a/b/f/z$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/f/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:La/a/b/c/d;

.field public b:La/a/b/f/z$d;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/a/b/f/z$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/graphics/RectF;

.field public e:La/a/b/c/d;

.field public f:La/a/b/c/d;


# direct methods
.method public constructor <init>(La/a/b/f/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/a/b/f/z$b;->c:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(La/a/b/f/z;La/a/b/f/z$a;)V
    .locals 0

    invoke-direct {p0, p1}, La/a/b/f/z$b;-><init>(La/a/b/f/z;)V

    return-void
.end method
