.class public abstract Landroidx/dynamicanimation/a/c;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/a/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/a/c$c;,
        Landroidx/dynamicanimation/a/c$b;,
        Landroidx/dynamicanimation/a/c$a;,
        Landroidx/dynamicanimation/a/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/dynamicanimation/a/c<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/dynamicanimation/a/a$b;"
    }
.end annotation


# static fields
.field public static final a:Landroidx/dynamicanimation/a/c$d;

.field public static final b:Landroidx/dynamicanimation/a/c$d;

.field public static final c:Landroidx/dynamicanimation/a/c$d;

.field public static final d:Landroidx/dynamicanimation/a/c$d;

.field public static final e:Landroidx/dynamicanimation/a/c$d;

.field public static final f:Landroidx/dynamicanimation/a/c$d;

.field public static final g:Landroidx/dynamicanimation/a/c$d;

.field public static final h:Landroidx/dynamicanimation/a/c$d;

.field public static final i:Landroidx/dynamicanimation/a/c$d;

.field public static final j:Landroidx/dynamicanimation/a/c$d;

.field public static final k:Landroidx/dynamicanimation/a/c$d;

.field public static final l:Landroidx/dynamicanimation/a/c$d;

.field public static final m:Landroidx/dynamicanimation/a/c$d;

.field public static final n:Landroidx/dynamicanimation/a/c$d;


# instance fields
.field o:F

.field p:F

.field q:Z

.field final r:Ljava/lang/Object;

.field final s:Landroidx/dynamicanimation/a/d;

.field t:Z

.field u:F

.field v:F

.field private w:J

.field private x:F

.field private final y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/a/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/a/c$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Landroidx/dynamicanimation/a/c$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->a:Landroidx/dynamicanimation/a/c$d;

    .line 74
    new-instance v0, Landroidx/dynamicanimation/a/c$8;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->b:Landroidx/dynamicanimation/a/c$d;

    .line 89
    new-instance v0, Landroidx/dynamicanimation/a/c$9;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->c:Landroidx/dynamicanimation/a/c$d;

    .line 104
    new-instance v0, Landroidx/dynamicanimation/a/c$10;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->d:Landroidx/dynamicanimation/a/c$d;

    .line 119
    new-instance v0, Landroidx/dynamicanimation/a/c$11;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->e:Landroidx/dynamicanimation/a/c$d;

    .line 134
    new-instance v0, Landroidx/dynamicanimation/a/c$12;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->f:Landroidx/dynamicanimation/a/c$d;

    .line 149
    new-instance v0, Landroidx/dynamicanimation/a/c$13;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->g:Landroidx/dynamicanimation/a/c$d;

    .line 164
    new-instance v0, Landroidx/dynamicanimation/a/c$14;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->h:Landroidx/dynamicanimation/a/c$d;

    .line 179
    new-instance v0, Landroidx/dynamicanimation/a/c$15;

    const-string v1, "x"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->i:Landroidx/dynamicanimation/a/c$d;

    .line 194
    new-instance v0, Landroidx/dynamicanimation/a/c$2;

    const-string v1, "y"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->j:Landroidx/dynamicanimation/a/c$d;

    .line 209
    new-instance v0, Landroidx/dynamicanimation/a/c$3;

    const-string v1, "z"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->k:Landroidx/dynamicanimation/a/c$d;

    .line 224
    new-instance v0, Landroidx/dynamicanimation/a/c$4;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->l:Landroidx/dynamicanimation/a/c$d;

    .line 240
    new-instance v0, Landroidx/dynamicanimation/a/c$5;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->m:Landroidx/dynamicanimation/a/c$d;

    .line 255
    new-instance v0, Landroidx/dynamicanimation/a/c$6;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/a/c$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/a/c;->n:Landroidx/dynamicanimation/a/c$d;

    return-void
.end method

.method constructor <init>(Landroidx/dynamicanimation/a/e;)V
    .locals 2

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 295
    iput v0, p0, Landroidx/dynamicanimation/a/c;->o:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 298
    iput v0, p0, Landroidx/dynamicanimation/a/c;->p:F

    const/4 v1, 0x0

    .line 302
    iput-boolean v1, p0, Landroidx/dynamicanimation/a/c;->q:Z

    .line 311
    iput-boolean v1, p0, Landroidx/dynamicanimation/a/c;->t:Z

    .line 314
    iput v0, p0, Landroidx/dynamicanimation/a/c;->u:F

    .line 315
    iget v0, p0, Landroidx/dynamicanimation/a/c;->u:F

    neg-float v0, v0

    iput v0, p0, Landroidx/dynamicanimation/a/c;->v:F

    const-wide/16 v0, 0x0

    .line 318
    iput-wide v0, p0, Landroidx/dynamicanimation/a/c;->w:J

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/a/c;->y:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/a/c;->z:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Landroidx/dynamicanimation/a/c;->r:Ljava/lang/Object;

    .line 341
    new-instance v0, Landroidx/dynamicanimation/a/c$7;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Landroidx/dynamicanimation/a/c$7;-><init>(Landroidx/dynamicanimation/a/c;Ljava/lang/String;Landroidx/dynamicanimation/a/e;)V

    iput-object v0, p0, Landroidx/dynamicanimation/a/c;->s:Landroidx/dynamicanimation/a/d;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 352
    iput p1, p0, Landroidx/dynamicanimation/a/c;->x:F

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/a/d<",
            "TK;>;)V"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 295
    iput v0, p0, Landroidx/dynamicanimation/a/c;->o:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 298
    iput v0, p0, Landroidx/dynamicanimation/a/c;->p:F

    const/4 v1, 0x0

    .line 302
    iput-boolean v1, p0, Landroidx/dynamicanimation/a/c;->q:Z

    .line 311
    iput-boolean v1, p0, Landroidx/dynamicanimation/a/c;->t:Z

    .line 314
    iput v0, p0, Landroidx/dynamicanimation/a/c;->u:F

    .line 315
    iget v0, p0, Landroidx/dynamicanimation/a/c;->u:F

    neg-float v0, v0

    iput v0, p0, Landroidx/dynamicanimation/a/c;->v:F

    const-wide/16 v0, 0x0

    .line 318
    iput-wide v0, p0, Landroidx/dynamicanimation/a/c;->w:J

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/a/c;->y:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/a/c;->z:Ljava/util/ArrayList;

    .line 363
    iput-object p1, p0, Landroidx/dynamicanimation/a/c;->r:Ljava/lang/Object;

    .line 364
    iput-object p2, p0, Landroidx/dynamicanimation/a/c;->s:Landroidx/dynamicanimation/a/d;

    .line 365
    iget-object p1, p0, Landroidx/dynamicanimation/a/c;->s:Landroidx/dynamicanimation/a/d;

    sget-object p2, Landroidx/dynamicanimation/a/c;->f:Landroidx/dynamicanimation/a/c$d;

    if-eq p1, p2, :cond_4

    sget-object p2, Landroidx/dynamicanimation/a/c;->g:Landroidx/dynamicanimation/a/c$d;

    if-eq p1, p2, :cond_4

    sget-object p2, Landroidx/dynamicanimation/a/c;->h:Landroidx/dynamicanimation/a/c$d;

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    sget-object p2, Landroidx/dynamicanimation/a/c;->l:Landroidx/dynamicanimation/a/c$d;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p1, p2, :cond_1

    .line 369
    iput v0, p0, Landroidx/dynamicanimation/a/c;->x:F

    goto :goto_2

    .line 370
    :cond_1
    sget-object p2, Landroidx/dynamicanimation/a/c;->d:Landroidx/dynamicanimation/a/c$d;

    if-eq p1, p2, :cond_3

    sget-object p2, Landroidx/dynamicanimation/a/c;->e:Landroidx/dynamicanimation/a/c$d;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 373
    iput p1, p0, Landroidx/dynamicanimation/a/c;->x:F

    goto :goto_2

    .line 371
    :cond_3
    :goto_0
    iput v0, p0, Landroidx/dynamicanimation/a/c;->x:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 367
    iput p1, p0, Landroidx/dynamicanimation/a/c;->x:F

    :goto_2
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 561
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 571
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 573
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 689
    iput-boolean v0, p0, Landroidx/dynamicanimation/a/c;->t:Z

    .line 690
    invoke-static {}, Landroidx/dynamicanimation/a/a;->a()Landroidx/dynamicanimation/a/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/a/a;->a(Landroidx/dynamicanimation/a/a$b;)V

    const-wide/16 v1, 0x0

    .line 691
    iput-wide v1, p0, Landroidx/dynamicanimation/a/c;->w:J

    .line 692
    iput-boolean v0, p0, Landroidx/dynamicanimation/a/c;->q:Z

    .line 693
    :goto_0
    iget-object v1, p0, Landroidx/dynamicanimation/a/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 694
    iget-object v1, p0, Landroidx/dynamicanimation/a/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Landroidx/dynamicanimation/a/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/a/c$b;

    iget v2, p0, Landroidx/dynamicanimation/a/c;->p:F

    iget v3, p0, Landroidx/dynamicanimation/a/c;->o:F

    invoke-interface {v1, p0, p1, v2, v3}, Landroidx/dynamicanimation/a/c$b;->a(Landroidx/dynamicanimation/a/c;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_1
    iget-object p0, p0, Landroidx/dynamicanimation/a/c;->y:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/dynamicanimation/a/c;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 628
    iget-boolean v0, p0, Landroidx/dynamicanimation/a/c;->t:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Landroidx/dynamicanimation/a/c;->t:Z

    .line 630
    iget-boolean v0, p0, Landroidx/dynamicanimation/a/c;->q:Z

    if-nez v0, :cond_0

    .line 631
    invoke-direct {p0}, Landroidx/dynamicanimation/a/c;->f()F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/a/c;->p:F

    .line 634
    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/a/c;->p:F

    iget v1, p0, Landroidx/dynamicanimation/a/c;->u:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Landroidx/dynamicanimation/a/c;->v:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 638
    invoke-static {}, Landroidx/dynamicanimation/a/a;->a()Landroidx/dynamicanimation/a/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/dynamicanimation/a/a;->a(Landroidx/dynamicanimation/a/a$b;J)V

    goto :goto_0

    .line 635
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private f()F
    .locals 1

    .line 727
    iget-object v0, p0, Landroidx/dynamicanimation/a/c;->s:Landroidx/dynamicanimation/a/d;

    iget-object p0, p0, Landroidx/dynamicanimation/a/c;->r:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/a/d;->a(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroidx/dynamicanimation/a/c$b;)Landroidx/dynamicanimation/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/a/c$b;",
            ")TT;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Landroidx/dynamicanimation/a/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Landroidx/dynamicanimation/a/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public a(Landroidx/dynamicanimation/a/c$c;)Landroidx/dynamicanimation/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/a/c$c;",
            ")TT;"
        }
    .end annotation

    .line 485
    invoke-virtual {p0}, Landroidx/dynamicanimation/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Landroidx/dynamicanimation/a/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Landroidx/dynamicanimation/a/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 488
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()V
    .locals 2

    .line 590
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 593
    iget-boolean v0, p0, Landroidx/dynamicanimation/a/c;->t:Z

    if-nez v0, :cond_0

    .line 594
    invoke-direct {p0}, Landroidx/dynamicanimation/a/c;->e()V

    :cond_0
    return-void

    .line 591
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract a(FF)Z
.end method

.method public a(J)Z
    .locals 4

    .line 654
    iget-wide v0, p0, Landroidx/dynamicanimation/a/c;->w:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 656
    iput-wide p1, p0, Landroidx/dynamicanimation/a/c;->w:J

    .line 657
    iget p1, p0, Landroidx/dynamicanimation/a/c;->p:F

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/a/c;->h(F)V

    return v3

    :cond_0
    sub-long v0, p1, v0

    .line 661
    iput-wide p1, p0, Landroidx/dynamicanimation/a/c;->w:J

    .line 662
    invoke-virtual {p0, v0, v1}, Landroidx/dynamicanimation/a/c;->b(J)Z

    move-result p1

    .line 664
    iget p2, p0, Landroidx/dynamicanimation/a/c;->p:F

    iget v0, p0, Landroidx/dynamicanimation/a/c;->u:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroidx/dynamicanimation/a/c;->p:F

    .line 665
    iget p2, p0, Landroidx/dynamicanimation/a/c;->p:F

    iget v0, p0, Landroidx/dynamicanimation/a/c;->v:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroidx/dynamicanimation/a/c;->p:F

    .line 667
    iget p2, p0, Landroidx/dynamicanimation/a/c;->p:F

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/a/c;->h(F)V

    if-eqz p1, :cond_1

    .line 670
    invoke-direct {p0, v3}, Landroidx/dynamicanimation/a/c;->a(Z)V

    :cond_1
    return p1
.end method

.method public b()V
    .locals 2

    .line 606
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 609
    iget-boolean v0, p0, Landroidx/dynamicanimation/a/c;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 610
    invoke-direct {p0, v0}, Landroidx/dynamicanimation/a/c;->a(Z)V

    :cond_0
    return-void

    .line 607
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Landroidx/dynamicanimation/a/c$c;)V
    .locals 0

    .line 504
    iget-object p0, p0, Landroidx/dynamicanimation/a/c;->z:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroidx/dynamicanimation/a/c;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method abstract b(J)Z
.end method

.method public c()Z
    .locals 0

    .line 620
    iget-boolean p0, p0, Landroidx/dynamicanimation/a/c;->t:Z

    return p0
.end method

.method d()F
    .locals 1

    .line 719
    iget p0, p0, Landroidx/dynamicanimation/a/c;->x:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method public e(F)Landroidx/dynamicanimation/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 443
    iput p1, p0, Landroidx/dynamicanimation/a/c;->v:F

    return-object p0
.end method

.method public f(F)Landroidx/dynamicanimation/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 429
    iput p1, p0, Landroidx/dynamicanimation/a/c;->u:F

    return-object p0
.end method

.method public g(F)Landroidx/dynamicanimation/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 411
    iput p1, p0, Landroidx/dynamicanimation/a/c;->o:F

    return-object p0
.end method

.method h(F)V
    .locals 3

    .line 706
    iget-object v0, p0, Landroidx/dynamicanimation/a/c;->s:Landroidx/dynamicanimation/a/d;

    iget-object v1, p0, Landroidx/dynamicanimation/a/c;->r:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/a/d;->a(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    .line 707
    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/a/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 708
    iget-object v0, p0, Landroidx/dynamicanimation/a/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Landroidx/dynamicanimation/a/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/a/c$c;

    iget v1, p0, Landroidx/dynamicanimation/a/c;->p:F

    iget v2, p0, Landroidx/dynamicanimation/a/c;->o:F

    invoke-interface {v0, p0, v1, v2}, Landroidx/dynamicanimation/a/c$c;->a(Landroidx/dynamicanimation/a/c;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 712
    :cond_1
    iget-object p0, p0, Landroidx/dynamicanimation/a/c;->z:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/dynamicanimation/a/c;->a(Ljava/util/ArrayList;)V

    return-void
.end method
