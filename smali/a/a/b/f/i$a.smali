.class public La/a/b/f/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lco/polarr/renderer/utils/AnimationJson$Animation;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:J


# direct methods
.method public constructor <init>(La/a/b/f/i;[Lco/polarr/renderer/utils/AnimationJson$Animation;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, La/a/b/f/i$a;->b:I

    if-eqz p2, :cond_1

    array-length p3, p2

    if-lez p3, :cond_1

    aget-object p3, p2, p1

    invoke-virtual {p3}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getTimeInMS()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    iget-object p3, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    new-instance v0, Lco/polarr/renderer/utils/AnimationJson$Animation;

    invoke-direct {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p3, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    invoke-static {p3, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p2, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lco/polarr/renderer/utils/AnimationJson$Animation;

    invoke-virtual {p2}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getTimeInMS()J

    move-result-wide p2

    iput-wide p2, p0, La/a/b/f/i$a;->c:J

    :cond_1
    iput p1, p0, La/a/b/f/i$a;->b:I

    return-void
.end method


# virtual methods
.method public a(J)Lco/polarr/renderer/utils/AnimationJson$Animation;
    .locals 4

    iget-wide v0, p0, La/a/b/f/i$a;->c:J

    rem-long/2addr p1, v0

    iget-object v0, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    iget-object p0, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lco/polarr/renderer/utils/AnimationJson$Animation;

    return-object p0

    :cond_1
    :goto_1
    iget-object v0, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    iget v2, p0, La/a/b/f/i$a;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/utils/AnimationJson$Animation;

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getTimeInMS()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    iget v2, p0, La/a/b/f/i$a;->b:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/polarr/renderer/utils/AnimationJson$Animation;

    invoke-virtual {v0}, Lco/polarr/renderer/utils/AnimationJson$Animation;->getTimeInMS()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_2

    iget-object p1, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    iget p0, p0, La/a/b/f/i$a;->b:I

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget v0, p0, La/a/b/f/i$a;->b:I

    add-int/2addr v0, v1

    iget-object v2, p0, La/a/b/f/i$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    rem-int/2addr v0, v2

    iput v0, p0, La/a/b/f/i$a;->b:I

    goto :goto_1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La/a/b/f/i$a;->b:I

    return-void
.end method
