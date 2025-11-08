.class public Lcom/oplus/camera/e/c;
.super Ljava/lang/Object;
.source "CameraRequestTag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/e/c$a;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Ljava/lang/String;

.field public F:Z

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:I

.field public K:[Ljava/lang/String;

.field public L:[I

.field public M:Z

.field public N:Lcom/oplus/camera/aps/util/CameraApsDecision;

.field public O:I

.field public P:I

.field public Q:Z

.field public R:I

.field public S:F

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:Ljava/lang/String;

.field public a:Z

.field public aa:Z

.field public ab:J

.field public ac:Z

.field public ad:J

.field public ae:Z

.field public af:I

.field public ag:Z

.field private ah:Lcom/oplus/camera/e/c$a;

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->a:Z

    .line 12
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->b:Z

    .line 13
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->c:Z

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/oplus/camera/e/c;->d:Ljava/lang/String;

    const-string v2, "rosy_nude"

    .line 15
    iput-object v2, p0, Lcom/oplus/camera/e/c;->e:Ljava/lang/String;

    .line 16
    iput v0, p0, Lcom/oplus/camera/e/c;->f:I

    .line 17
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->g:Z

    .line 18
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->h:Z

    const-string v2, "default"

    .line 19
    iput-object v2, p0, Lcom/oplus/camera/e/c;->i:Ljava/lang/String;

    .line 20
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->j:Z

    .line 21
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->k:Z

    .line 22
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->l:Z

    .line 23
    iput v0, p0, Lcom/oplus/camera/e/c;->m:I

    .line 24
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->n:Z

    .line 25
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->o:Z

    .line 26
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->p:Z

    .line 27
    iput-object v1, p0, Lcom/oplus/camera/e/c;->q:Ljava/lang/String;

    .line 29
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->r:Z

    .line 31
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->s:Z

    .line 32
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->t:Z

    .line 33
    iput v0, p0, Lcom/oplus/camera/e/c;->u:I

    const/4 v2, -0x1

    .line 34
    iput v2, p0, Lcom/oplus/camera/e/c;->v:I

    .line 35
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->w:Z

    .line 36
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->x:Z

    const/4 v3, 0x1

    .line 37
    iput v3, p0, Lcom/oplus/camera/e/c;->y:I

    .line 38
    iput v0, p0, Lcom/oplus/camera/e/c;->z:I

    const-string v4, ""

    .line 39
    iput-object v4, p0, Lcom/oplus/camera/e/c;->A:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/oplus/camera/e/c;->B:I

    .line 41
    iput-object v4, p0, Lcom/oplus/camera/e/c;->C:Ljava/lang/String;

    .line 42
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->D:Z

    .line 43
    iput-object v4, p0, Lcom/oplus/camera/e/c;->E:Ljava/lang/String;

    .line 44
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->F:Z

    .line 45
    iput-object v4, p0, Lcom/oplus/camera/e/c;->G:Ljava/lang/String;

    .line 46
    iput-object v4, p0, Lcom/oplus/camera/e/c;->H:Ljava/lang/String;

    .line 47
    iput-object v4, p0, Lcom/oplus/camera/e/c;->I:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/oplus/camera/e/c;->J:I

    .line 49
    iput-object v1, p0, Lcom/oplus/camera/e/c;->K:[Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/oplus/camera/e/c;->L:[I

    .line 51
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->M:Z

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 53
    iput v0, p0, Lcom/oplus/camera/e/c;->O:I

    .line 54
    iput v0, p0, Lcom/oplus/camera/e/c;->P:I

    .line 55
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->Q:Z

    const/16 v2, 0x3c

    .line 56
    iput v2, p0, Lcom/oplus/camera/e/c;->R:I

    const/4 v2, 0x0

    .line 57
    iput v2, p0, Lcom/oplus/camera/e/c;->S:F

    .line 58
    iput v3, p0, Lcom/oplus/camera/e/c;->T:I

    .line 59
    iput v0, p0, Lcom/oplus/camera/e/c;->U:I

    .line 60
    iput v0, p0, Lcom/oplus/camera/e/c;->V:I

    .line 61
    iput v0, p0, Lcom/oplus/camera/e/c;->W:I

    .line 62
    iput v0, p0, Lcom/oplus/camera/e/c;->X:I

    .line 63
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->Y:Z

    .line 64
    iput-object v1, p0, Lcom/oplus/camera/e/c;->Z:Ljava/lang/String;

    .line 65
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->aa:Z

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/oplus/camera/e/c;->ab:J

    .line 67
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->ac:Z

    .line 68
    iput-wide v1, p0, Lcom/oplus/camera/e/c;->ad:J

    .line 69
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->ae:Z

    .line 70
    iput v0, p0, Lcom/oplus/camera/e/c;->af:I

    .line 71
    iput-boolean v0, p0, Lcom/oplus/camera/e/c;->ag:Z

    .line 84
    sget-object v0, Lcom/oplus/camera/e/c$a;->PREVIEW:Lcom/oplus/camera/e/c$a;

    iput-object v0, p0, Lcom/oplus/camera/e/c;->ah:Lcom/oplus/camera/e/c$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/camera/e/c$a;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/e/c;->ah:Lcom/oplus/camera/e/c$a;

    return-object p0
.end method

.method public a(Lcom/oplus/camera/e/c$a;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/oplus/camera/e/c;->ah:Lcom/oplus/camera/e/c$a;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 104
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    return-object p0
.end method
