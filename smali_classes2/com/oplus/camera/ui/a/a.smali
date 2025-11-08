.class public Lcom/oplus/camera/ui/a/a;
.super Ljava/lang/Object;
.source "HintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/a/a$c;,
        Lcom/oplus/camera/ui/a/a$a;,
        Lcom/oplus/camera/ui/a/a$b;
    }
.end annotation


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/os/Handler;

.field private F:Lcom/oplus/camera/ui/a/a$b;

.field private G:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/content/res/Resources;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

.field private h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

.field private i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/oplus/camera/ui/preview/a;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Lcom/oplus/camera/ui/CameraUIInterface;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 4

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->a:I

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->b:I

    .line 50
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->c:I

    .line 51
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->d:I

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    .line 53
    iput-object v1, p0, Lcom/oplus/camera/ui/a/a;->f:Landroid/view/ViewGroup;

    .line 54
    iput-object v1, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 55
    iput-object v1, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 56
    iput-object v1, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 57
    iput-object v1, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    .line 59
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->l:I

    .line 60
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->m:I

    .line 61
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->n:I

    .line 62
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->o:I

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->p:I

    .line 64
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->q:I

    const/4 v2, -0x1

    .line 65
    iput v2, p0, Lcom/oplus/camera/ui/a/a;->r:I

    .line 66
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->s:I

    .line 67
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/a;->t:Z

    const-wide/16 v2, 0x0

    .line 68
    iput-wide v2, p0, Lcom/oplus/camera/ui/a/a;->u:J

    .line 69
    iput-object v1, p0, Lcom/oplus/camera/ui/a/a;->v:Ljava/lang/String;

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/a/a;->C:Ljava/util/List;

    .line 77
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/a/a;->D:Ljava/util/Map;

    .line 79
    iput-object v1, p0, Lcom/oplus/camera/ui/a/a;->F:Lcom/oplus/camera/ui/a/a$b;

    .line 80
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/a;->G:Z

    .line 123
    iput-object p2, p0, Lcom/oplus/camera/ui/a/a;->w:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 124
    iput-object p1, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    .line 125
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    const p2, 0x7f07060d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/a/a;->a:I

    .line 126
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    const p2, 0x7f07060e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/a/a;->b:I

    .line 127
    new-instance p1, Lcom/oplus/camera/ui/a/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/a/a$1;-><init>(Lcom/oplus/camera/ui/a/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->D:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->D:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/a/a;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/a/b;",
            ">;)V"
        }
    .end annotation

    .line 901
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/ui/a/a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/ui/a/a$3;-><init>(Lcom/oplus/camera/ui/a/a;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 912
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 913
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 914
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/a/b;

    .line 915
    iget-object v0, p2, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    sget-object v1, Lcom/oplus/camera/ui/a/b$b;->STRING:Lcom/oplus/camera/ui/a/b$b;

    if-ne v0, v1, :cond_1

    iget p2, p2, Lcom/oplus/camera/ui/a/b;->a:I

    if-ne p2, p1, :cond_1

    .line 916
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(IZ)V
    .locals 4

    .line 882
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const v2, 0x7f0901d1

    .line 883
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/a/b;

    if-eqz v1, :cond_0

    .line 885
    iget-object v2, v1, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    sget-object v3, Lcom/oplus/camera/ui/a/b$b;->STRING:Lcom/oplus/camera/ui/a/b$b;

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/oplus/camera/ui/a/b;->a:I

    if-ne v2, p1, :cond_0

    .line 888
    iput-boolean p2, v1, Lcom/oplus/camera/ui/a/b;->j:Z

    goto :goto_0

    .line 892
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    .line 893
    iget-object p2, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    .line 894
    iget-object p2, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    .line 895
    iget-object p2, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    .line 896
    iget-object p2, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    .line 897
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->m()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/a/a;ILjava/util/ArrayList;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/a/a;IZ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/a/a;->a(IZ)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/a/b;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 592
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/a/a$4;->b:[I

    iget-object v1, p1, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 626
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 629
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    .line 630
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/ui/a/a;->a(Ljava/util/ArrayList;Lcom/oplus/camera/ui/a/b;)V

    .line 631
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/ui/a/a;->a(Ljava/util/ArrayList;Lcom/oplus/camera/ui/a/b;)V

    goto/16 :goto_0

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 617
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    .line 618
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 619
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 606
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 607
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    .line 608
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 609
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 597
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    .line 598
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 599
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 637
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V
    .locals 12

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 497
    :cond_0
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/a/a;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 498
    invoke-direct {p0, p2, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    :cond_1
    const v0, 0x7f0901d1

    .line 501
    invoke-virtual {p2, v0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setTag(ILjava/lang/Object;)V

    .line 502
    invoke-virtual {p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->bringToFront()V

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->w:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->bd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-nez v0, :cond_2

    .line 506
    iget v0, p0, Lcom/oplus/camera/ui/a/a;->s:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 509
    :goto_0
    sget-object v3, Lcom/oplus/camera/ui/a/a$4;->a:[I

    iget-object v4, p1, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/a/b$b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v3, v1, :cond_9

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 p1, 0x3

    if-eq v3, p1, :cond_3

    goto/16 :goto_5

    :cond_3
    const/4 p1, 0x0

    .line 577
    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setAlpha(F)V

    .line 578
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/a;->d(I)V

    .line 579
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/a;->c(I)V

    goto/16 :goto_5

    .line 526
    :cond_4
    iget-object v3, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    if-eq p2, v3, :cond_5

    .line 527
    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(I)V

    goto :goto_1

    .line 529
    :cond_5
    iget v3, p0, Lcom/oplus/camera/ui/a/a;->b:I

    iget v5, p0, Lcom/oplus/camera/ui/a/a;->c:I

    add-int/2addr v3, v5

    add-int/2addr v3, v0

    invoke-virtual {p2, v3}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(I)V

    .line 534
    :goto_1
    iget v0, p1, Lcom/oplus/camera/ui/a/b;->c:I

    const/4 v3, -0x1

    if-le v0, v3, :cond_6

    .line 535
    iget v0, p1, Lcom/oplus/camera/ui/a/b;->a:I

    iget v3, p1, Lcom/oplus/camera/ui/a/b;->c:I

    iget-object v5, p1, Lcom/oplus/camera/ui/a/b;->q:[Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/oplus/camera/util/Util;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 537
    :cond_6
    iget v0, p1, Lcom/oplus/camera/ui/a/b;->a:I

    iget-object v3, p1, Lcom/oplus/camera/ui/a/b;->q:[Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/oplus/camera/util/Util;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz p3, :cond_7

    .line 541
    invoke-virtual {p2, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setChangeHintColor(Z)V

    .line 542
    new-instance p3, Lcom/oplus/camera/ui/camerascreenhint/a$a;

    invoke-direct {p3}, Lcom/oplus/camera/ui/camerascreenhint/a$a;-><init>()V

    .line 543
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    .line 544
    invoke-virtual {p3, v2}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget-boolean v0, p1, Lcom/oplus/camera/ui/a/b;->d:Z

    .line 545
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    .line 546
    invoke-virtual {p3, v2}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget v0, p1, Lcom/oplus/camera/ui/a/b;->n:I

    .line 547
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->c(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget v0, p1, Lcom/oplus/camera/ui/a/b;->p:I

    .line 548
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->d(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget-boolean v0, p1, Lcom/oplus/camera/ui/a/b;->h:Z

    .line 549
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->c(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget-boolean p1, p1, Lcom/oplus/camera/ui/a/b;->g:Z

    .line 550
    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->d(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    .line 551
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a()Lcom/oplus/camera/ui/camerascreenhint/a;

    move-result-object p1

    .line 552
    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/a;)V

    goto :goto_3

    .line 554
    :cond_7
    iget p3, p1, Lcom/oplus/camera/ui/a/b;->m:I

    if-lez p3, :cond_8

    iget p3, p1, Lcom/oplus/camera/ui/a/b;->l:I

    if-lez p3, :cond_8

    .line 555
    invoke-virtual {p2, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setChangeHintColor(Z)V

    .line 558
    :cond_8
    new-instance p3, Lcom/oplus/camera/ui/camerascreenhint/a$a;

    invoke-direct {p3}, Lcom/oplus/camera/ui/camerascreenhint/a$a;-><init>()V

    .line 559
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    .line 560
    invoke-virtual {p3, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    .line 561
    invoke-virtual {p3, v2}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget v0, p1, Lcom/oplus/camera/ui/a/b;->p:I

    .line 562
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->d(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget v0, p1, Lcom/oplus/camera/ui/a/b;->l:I

    .line 563
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget v0, p1, Lcom/oplus/camera/ui/a/b;->m:I

    .line 564
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget-boolean v0, p1, Lcom/oplus/camera/ui/a/b;->h:Z

    .line 565
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->c(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget-boolean v0, p1, Lcom/oplus/camera/ui/a/b;->i:Z

    .line 566
    invoke-virtual {p3, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->e(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p3

    iget-boolean p1, p1, Lcom/oplus/camera/ui/a/b;->g:Z

    .line 567
    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->d(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    .line 568
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a()Lcom/oplus/camera/ui/camerascreenhint/a;

    move-result-object p1

    .line 569
    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/a;)V

    .line 572
    :goto_3
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/a/a;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 573
    invoke-virtual {p2, v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setAlpha(F)V

    goto :goto_5

    .line 511
    :cond_9
    iget-object p3, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    if-eq p2, p3, :cond_a

    .line 512
    iget-object p3, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    const v1, 0x7f07060c

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    add-int/2addr p3, v0

    .line 513
    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(I)V

    goto :goto_4

    .line 515
    :cond_a
    iget p3, p0, Lcom/oplus/camera/ui/a/a;->b:I

    iget v1, p0, Lcom/oplus/camera/ui/a/a;->c:I

    add-int/2addr p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(I)V

    .line 518
    :goto_4
    invoke-virtual {p2, v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setIconAlpha(F)V

    .line 519
    iget v6, p1, Lcom/oplus/camera/ui/a/b;->b:I

    iget-boolean v7, p1, Lcom/oplus/camera/ui/a/b;->e:Z

    iget-boolean v8, p1, Lcom/oplus/camera/ui/a/b;->f:Z

    iget v9, p1, Lcom/oplus/camera/ui/a/b;->n:I

    iget-boolean v10, p1, Lcom/oplus/camera/ui/a/b;->g:Z

    iget v11, p1, Lcom/oplus/camera/ui/a/b;->p:I

    move-object v5, p2

    invoke-virtual/range {v5 .. v11}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(IZZIZI)V

    .line 521
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/a/a;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 522
    invoke-virtual {p2, v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setAlpha(F)V

    :cond_b
    :goto_5
    return-void
.end method

.method private a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V
    .locals 4

    .line 370
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const v0, 0x7f0901d1

    .line 371
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearViewNoAnim:return: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HintManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->d()V

    .line 378
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Z)V

    .line 379
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Z)V

    :cond_0
    return-void

    .line 385
    :cond_1
    check-cast v1, Lcom/oplus/camera/ui/a/b;

    const/4 p0, 0x1

    if-nez p2, :cond_2

    .line 386
    iget-boolean v3, v1, Lcom/oplus/camera/ui/a/b;->k:Z

    if-eqz v3, :cond_2

    move v3, p0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Z)V

    if-nez p2, :cond_3

    .line 387
    iget-boolean v3, v1, Lcom/oplus/camera/ui/a/b;->j:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Z)V

    if-nez p2, :cond_4

    .line 389
    iget-boolean p0, v1, Lcom/oplus/camera/ui/a/b;->j:Z

    if-nez p0, :cond_5

    .line 390
    :cond_4
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->h()V

    :cond_5
    const/4 p0, 0x0

    .line 393
    invoke-virtual {p1, v0, p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/oplus/camera/ui/a/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/a/b;",
            ">;",
            "Lcom/oplus/camera/ui/a/b$a;",
            ")V"
        }
    .end annotation

    .line 794
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 798
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 800
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 801
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/a/b;

    .line 803
    iget-object p1, p1, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    if-ne p2, p1, :cond_1

    .line 804
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/oplus/camera/ui/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/a/b;",
            ">;",
            "Lcom/oplus/camera/ui/a/b;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 641
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 646
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 647
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_1
    if-ltz p0, :cond_3

    .line 654
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/a/a;)Lcom/oplus/camera/ui/a/a$b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->F:Lcom/oplus/camera/ui/a/a$b;

    return-object p0
.end method

.method private b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/a/b;
    .locals 0

    const p0, 0x7f0901d1

    .line 487
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 489
    instance-of p1, p0, Lcom/oplus/camera/ui/a/b;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/oplus/camera/ui/a/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/a/a;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->l()V

    return-void
.end method

.method private c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/a/a;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->k()V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/a/a;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->m()V

    return-void
.end method

.method private k()V
    .locals 3

    const/4 v0, 0x1

    .line 161
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->C:Ljava/util/List;

    iget v2, p0, Lcom/oplus/camera/ui/a/a;->r:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->a([I)V

    .line 162
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private l()V
    .locals 9

    .line 193
    iget v0, p0, Lcom/oplus/camera/ui/a/a;->r:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/a/a;->r:I

    .line 194
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->C:Ljava/util/List;

    iget v1, p0, Lcom/oplus/camera/ui/a/a;->r:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f0805e9

    const v6, 0x7f0604ff

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIZ)V

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/oplus/camera/ui/a/a;->u:J

    const/4 p0, 0x4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private m()V
    .locals 4

    .line 315
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/ui/a/a$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/a/a$2;-><init>(Lcom/oplus/camera/ui/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 327
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 329
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->n()V

    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    .line 335
    iget-object v2, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 336
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a;->c(I)V

    .line 339
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->n()V

    return-void

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v3, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v3, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 345
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v3, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v3, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    goto/16 :goto_0

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 348
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v2, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 349
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v2, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 350
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    goto/16 :goto_0

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 352
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v3, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v3, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 354
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    goto :goto_0

    .line 355
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 356
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v3, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v3, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 357
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 358
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    goto :goto_0

    .line 360
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    .line 361
    iget-object v2, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)V

    .line 362
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 363
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V

    .line 366
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->n()V

    return-void
.end method

.method private n()V
    .locals 6

    .line 436
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a;->i()Z

    move-result v0

    .line 438
    iget v1, p0, Lcom/oplus/camera/ui/a/a;->n:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    const v4, 0x7f0704c5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/a/a;->q:I

    .line 441
    iget v1, p0, Lcom/oplus/camera/ui/a/a;->o:I

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    const v4, 0x7f0704c6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/a/a;->q:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    if-ne v4, v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    const v4, 0x7f0709cd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/a/a;->q:I

    goto :goto_0

    .line 447
    :cond_1
    iput v3, p0, Lcom/oplus/camera/ui/a/a;->q:I

    .line 450
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLayout:\nleft:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const v5, 0x7f0901d1

    .line 451
    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nright:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 452
    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\ncenter:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 453
    invoke-virtual {v4, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nisAISceneShow:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HintManager"

    .line 450
    invoke-static {v4, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v1, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    iget v1, p0, Lcom/oplus/camera/ui/a/a;->q:I

    iget v2, p0, Lcom/oplus/camera/ui/a/a;->p:I

    iget-boolean v5, p0, Lcom/oplus/camera/ui/a/a;->G:Z

    invoke-virtual {v0, v3, v1, v2, v5}, Lcom/oplus/camera/ui/preview/a;->a(IIIZ)V

    goto :goto_1

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(I)V

    .line 463
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setAlpha(F)V

    goto :goto_6

    .line 466
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTextWidth()I

    move-result v1

    if-eqz v0, :cond_6

    .line 469
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a;->g()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 470
    :cond_5
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    move v3, v0

    .line 471
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    iget v2, p0, Lcom/oplus/camera/ui/a/a;->a:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/oplus/camera/ui/a/a;->q:I

    iget v4, p0, Lcom/oplus/camera/ui/a/a;->p:I

    iget-boolean v5, p0, Lcom/oplus/camera/ui/a/a;->G:Z

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/oplus/camera/ui/preview/a;->a(IIIZ)V

    goto :goto_5

    .line 473
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_9

    .line 474
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    .line 475
    sget-object v4, Lcom/oplus/camera/ui/a/b$b;->ICON:Lcom/oplus/camera/ui/a/b$b;

    if-ne v4, v0, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    if-eqz v2, :cond_8

    .line 476
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getIconWidth()I

    move-result v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getMeasuredWidth()I

    move-result v0

    :goto_4
    move v3, v0

    .line 477
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    iget v2, p0, Lcom/oplus/camera/ui/a/a;->a:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(I)V

    .line 481
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setAlpha(F)V

    .line 482
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    iget p0, p0, Lcom/oplus/camera/ui/a/a;->a:I

    add-int/2addr v3, p0

    neg-int p0, v3

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(I)V

    :goto_6
    return-void
.end method

.method private o()I
    .locals 2

    .line 1002
    iget v0, p0, Lcom/oplus/camera/ui/a/a;->o:I

    const v1, 0x7f0805e9

    if-eqz v0, :cond_1

    .line 1003
    iget p0, p0, Lcom/oplus/camera/ui/a/a;->d:I

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    :cond_0
    const v1, 0x7f0805eb

    :cond_1
    return v1
.end method


# virtual methods
.method public a(II)Lcom/oplus/camera/ui/a/a$a;
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const/4 v2, 0x2

    .line 263
    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getMarginLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getViewGap()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getMarginTop()I

    move-result v4

    invoke-virtual {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getViewGap()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v2, v3

    const v3, 0x7f0901d2

    .line 265
    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setTag(ILjava/lang/Object;)V

    .line 266
    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(II)V

    goto :goto_0

    .line 269
    :cond_1
    new-instance p1, Lcom/oplus/camera/ui/a/a$c;

    const-string p2, "updateMarginLeftAndTop"

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/a/a$c;-><init>(Lcom/oplus/camera/ui/a/a;Ljava/lang/String;)V

    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->C:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HintManager"

    const-string v1, "hideLooperCameraScreenHintText"

    .line 181
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->c(Z)V

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 188
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->r:I

    const-wide/16 v0, 0x0

    .line 189
    iput-wide v0, p0, Lcom/oplus/camera/ui/a/a;->u:J

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    sget-object v1, Lcom/oplus/camera/ui/a/b$a;->SPECIAL:Lcom/oplus/camera/ui/a/b$a;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Ljava/util/ArrayList;Lcom/oplus/camera/ui/a/b$a;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    sget-object v1, Lcom/oplus/camera/ui/a/b$a;->TEMP:Lcom/oplus/camera/ui/a/b$a;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Ljava/util/ArrayList;Lcom/oplus/camera/ui/a/b$a;)V

    .line 283
    :cond_1
    new-instance v0, Lcom/oplus/camera/ui/a/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/a/b;-><init>()V

    .line 284
    sget-object v1, Lcom/oplus/camera/ui/a/b$a;->SPECIAL:Lcom/oplus/camera/ui/a/b$a;

    iput-object v1, v0, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    .line 285
    sget-object v1, Lcom/oplus/camera/ui/a/b$b;->AI_SCENE:Lcom/oplus/camera/ui/a/b$b;

    iput-object v1, v0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    .line 286
    iput p1, v0, Lcom/oplus/camera/ui/a/b;->o:I

    .line 287
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;)V

    .line 288
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->m()V

    return-void
.end method

.method public a(IZZIIIIZZZ)V
    .locals 14

    const/4 v0, 0x1

    .line 685
    new-array v13, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v13, v0

    const/4 v12, -0x1

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v13}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIIZZZI[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a(IZZIIIIZZZI[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 694
    iget v1, v0, Lcom/oplus/camera/ui/a/a;->d:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, v0, Lcom/oplus/camera/ui/a/a;->w:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_0

    const-string v2, "pref_camera_torch_mode_key"

    .line 696
    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->h(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a:Lcom/oplus/camera/ComboPreferences;

    if-eqz v1, :cond_0

    const-string v3, "off"

    .line 702
    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 704
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0805eb

    goto :goto_0

    :cond_0
    move/from16 v1, p5

    .line 711
    :goto_0
    iget v2, v0, Lcom/oplus/camera/ui/a/a;->l:I

    rem-int/lit16 v3, v2, 0xb4

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_3

    .line 713
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v2

    if-nez v2, :cond_3

    const v1, 0x7f0805e9

    goto :goto_1

    :cond_2
    move/from16 v1, p5

    .line 718
    :cond_3
    :goto_1
    iget v2, v0, Lcom/oplus/camera/ui/a/a;->n:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_4

    .line 719
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/a/a;->o()I

    move-result v1

    :cond_4
    move v9, v1

    .line 722
    new-instance v1, Lcom/oplus/camera/ui/a/b;

    move-object v4, v1

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v16, p12

    invoke-direct/range {v4 .. v16}, Lcom/oplus/camera/ui/a/b;-><init>(IZZIIIIZZZI[Ljava/lang/Object;)V

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showHint:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/a/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HintManager"

    invoke-static {v4, v2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v2, v0, Lcom/oplus/camera/ui/a/a;->F:Lcom/oplus/camera/ui/a/a$b;

    if-eqz v2, :cond_5

    .line 728
    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/a/a$b;->a(Lcom/oplus/camera/ui/a/b;)V

    .line 731
    :cond_5
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;)V

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/a/a;->m()V

    if-eqz p3, :cond_7

    .line 735
    iget-object v1, v0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 736
    iget-object v1, v0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 739
    :cond_6
    iget-object v1, v0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 740
    iget-object v0, v0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    add-int v2, p4, p7

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    return-void
.end method

.method public a(IZZIIIZ)V
    .locals 10

    const/4 v0, 0x1

    .line 660
    new-array v9, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v9, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIZ[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a(IZZIIIZ[Ljava/lang/Object;)V
    .locals 13

    const/16 v4, 0xbb8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    move-object/from16 v12, p8

    .line 665
    invoke-virtual/range {v0 .. v12}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIIZZZI[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a(IZZIIZZZI[Ljava/lang/Object;)V
    .locals 13

    const v5, 0x7f0805e9

    const v6, 0x7f0604ff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    .line 678
    invoke-virtual/range {v0 .. v12}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIIZZZI[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a(IZZIIZZZ[Ljava/lang/Object;)V
    .locals 13

    const v5, 0x7f0805e9

    const v6, 0x7f0604ff

    const/4 v11, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p9

    .line 671
    invoke-virtual/range {v0 .. v12}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIIZZZI[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IZZIZI)V
    .locals 8

    .line 758
    new-instance v7, Lcom/oplus/camera/ui/a/b;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/a/b;-><init>(IZZIZI)V

    .line 760
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "showHintImage:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/a/b;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "HintManager"

    invoke-static {p5, p2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-direct {p0, v7}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/b;)V

    .line 763
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->m()V

    if-eqz p3, :cond_0

    .line 766
    iget-object p2, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    const/4 p3, 0x2

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p1, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 767
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    int-to-long p2, p4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 1

    .line 955
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 956
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Landroid/util/Size;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/oplus/camera/ui/a/a;->f:Landroid/view/ViewGroup;

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/a;)V
    .locals 9

    .line 961
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/a;->G:Z

    .line 962
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v0

    .line 963
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    .line 965
    iget-object v2, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 966
    invoke-virtual {v3, p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/screen/b/a;I)V

    .line 967
    iget-boolean v6, p0, Lcom/oplus/camera/ui/a/a;->G:Z

    invoke-virtual {v3, v6}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setIsLowRack(Z)V

    const/4 v6, 0x0

    if-ne v4, v1, :cond_1

    .line 969
    iget-boolean v7, p0, Lcom/oplus/camera/ui/a/a;->G:Z

    if-eqz v7, :cond_1

    .line 970
    iget-object v7, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    const v8, 0x7f0706f9

    .line 971
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 970
    invoke-virtual {v3, v6, v7, v6, v5}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(IIIZ)V

    goto :goto_1

    .line 974
    :cond_1
    invoke-virtual {v3, v6}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setBMarginBottom(Z)V

    .line 975
    invoke-virtual {v3}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    :goto_1
    if-eq v5, v1, :cond_2

    if-ne v4, v1, :cond_0

    .line 980
    :cond_2
    invoke-virtual {v3}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->f()V

    goto :goto_0

    :cond_3
    if-ne v5, v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    if-ne v4, v1, :cond_6

    .line 986
    :cond_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/a/a;->p:I

    goto :goto_2

    .line 988
    :cond_6
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/a/a;->p:I

    .line 991
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    if-eqz p1, :cond_7

    .line 992
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->n()V

    .line 995
    :cond_7
    iput v1, p0, Lcom/oplus/camera/ui/a/a;->n:I

    .line 996
    iput v0, p0, Lcom/oplus/camera/ui/a/a;->o:I

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a/a$b;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/oplus/camera/ui/a/a;->F:Lcom/oplus/camera/ui/a/a$b;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V
    .locals 1

    .line 235
    iput-object p1, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 236
    iput-object p2, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 237
    iput-object p3, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 238
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    .line 239
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    const p2, 0x7f070611

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/a/a;->c:I

    .line 243
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/a/a;->s:I

    .line 244
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    iget p2, p0, Lcom/oplus/camera/ui/a/a;->b:I

    iget p3, p0, Lcom/oplus/camera/ui/a/a;->c:I

    add-int v0, p2, p3

    add-int/2addr p2, p3

    invoke-virtual {p1, v0, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(II)V

    .line 245
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const/4 p2, 0x0

    const p3, 0x7f0901d1

    invoke-virtual {p1, p3, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setTag(ILjava/lang/Object;)V

    .line 246
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p1, p3, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setTag(ILjava/lang/Object;)V

    .line 247
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p1, p3, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setTag(ILjava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const-string p2, "left"

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setTag(Ljava/lang/Object;)V

    .line 249
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const-string p2, "right"

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setTag(Ljava/lang/Object;)V

    .line 250
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const-string p1, "center"

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/oplus/camera/ui/a/a;->k:Lcom/oplus/camera/ui/preview/a;

    return-void
.end method

.method public a(Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    iput-wide p2, p0, Lcom/oplus/camera/ui/a/a;->u:J

    .line 173
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->l()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setManual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/a/a;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HintManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iput-boolean p1, p0, Lcom/oplus/camera/ui/a/a;->t:Z

    return-void
.end method

.method public varargs a([I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 861
    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->e:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 864
    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 867
    :cond_1
    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    .line 868
    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    .line 869
    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    .line 870
    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    .line 871
    iget-object v4, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/a/a;->a(ILjava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideHint:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HintManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->m()V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/oplus/camera/ui/a/a;->t:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->v:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)V
    .locals 0

    .line 745
    iput p1, p0, Lcom/oplus/camera/ui/a/a;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setManualKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HintManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/oplus/camera/ui/a/a;->v:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const v1, 0x7f0901d1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideHintImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HintManager"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 776
    sget-object v1, Lcom/oplus/camera/ui/a/b$a;->SPECIAL:Lcom/oplus/camera/ui/a/b$a;

    iget-object v2, v0, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    if-ne v1, v2, :cond_0

    .line 777
    iput-boolean p1, v0, Lcom/oplus/camera/ui/a/b;->k:Z

    .line 780
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 782
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    .line 784
    iget-object v1, v0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    sget-object v2, Lcom/oplus/camera/ui/a/b$b;->AI_SCENE:Lcom/oplus/camera/ui/a/b$b;

    if-eq v1, v2, :cond_1

    .line 785
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 786
    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->m()V

    return-void
.end method

.method public b()Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/oplus/camera/ui/a/a;->t:Z

    return p0
.end method

.method public c(I)V
    .locals 3

    .line 943
    iput p1, p0, Lcom/oplus/camera/ui/a/a;->l:I

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 946
    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 947
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setOrientation(I)V

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setOrientationNoAnim(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideHint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HintManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const v2, 0x7f0901d1

    .line 835
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/a/b;

    if-eqz v1, :cond_1

    .line 838
    iput-boolean p1, v1, Lcom/oplus/camera/ui/a/b;->k:Z

    .line 839
    iput-boolean p1, v1, Lcom/oplus/camera/ui/a/b;->j:Z

    goto :goto_0

    .line 843
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 844
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 845
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 846
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 847
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->A:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 848
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 849
    iget-object p1, p0, Lcom/oplus/camera/ui/a/a;->D:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 850
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->m()V

    return-void
.end method

.method public c()Z
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->v:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setMoreMode(Z)V

    .line 924
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setMoreMode(Z)V

    .line 925
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->setMoreMode(Z)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 294
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/a/b;

    .line 297
    sget-object v2, Lcom/oplus/camera/ui/a/b$b;->AI_SCENE:Lcom/oplus/camera/ui/a/b$b;

    iget-object v1, v1, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    if-ne v2, v1, :cond_0

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 302
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 304
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/a/b;

    .line 307
    sget-object v1, Lcom/oplus/camera/ui/a/b$b;->AI_SCENE:Lcom/oplus/camera/ui/a/b$b;

    iget-object v0, v0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    if-ne v1, v0, :cond_2

    .line 308
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public f()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->f:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 821
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->B:Ljava/util/ArrayList;

    sget-object v1, Lcom/oplus/camera/ui/a/b$a;->TEMP:Lcom/oplus/camera/ui/a/b$a;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Ljava/util/ArrayList;Lcom/oplus/camera/ui/a/b$a;)V

    .line 822
    invoke-direct {p0}, Lcom/oplus/camera/ui/a/a;->m()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c()V

    .line 930
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c()V

    .line 931
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b()V

    .line 936
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->h:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b()V

    .line 937
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->i:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b()V

    .line 938
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a;->E:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 939
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->D:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 0

    .line 1016
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a;->g:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    if-eqz p0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextViewString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
