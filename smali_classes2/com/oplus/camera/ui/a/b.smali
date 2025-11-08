.class public Lcom/oplus/camera/ui/a/b;
.super Ljava/lang/Object;
.source "HintModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/a/b$b;,
        Lcom/oplus/camera/ui/a/b$a;
    }
.end annotation


# static fields
.field private static t:[I

.field private static u:[I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:[Ljava/lang/Object;

.field public r:Lcom/oplus/camera/ui/a/b$b;

.field public s:Lcom/oplus/camera/ui/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 150
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/camera/ui/a/b;->t:[I

    const/16 v0, 0x27

    .line 158
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oplus/camera/ui/a/b;->u:[I

    return-void

    :array_0
    .array-data 4
        0x7f10050c
        0x7f100071
        0x7f1005b9
        0x7f100078
        0x7f100258
    .end array-data

    :array_1
    .array-data 4
        0x7f1000a3
        0x7f1002dc
        0x7f100077
        0x7f100257
        0x7f1004c9
        0x7f100489
        0x7f100420
        0x7f100424
        0x7f1000eb
        0x7f1000ea
        0x7f1001fc
        0x7f1000ed
        0x7f1000e7
        0x7f100314
        0x7f10031b
        0x7f10032f
        0x7f1004cf
        0x7f100216
        0x7f100219
        0x7f100209
        0x7f10020f
        0x7f100210
        0x7f10029c
        0x7f10029d
        0x7f10029a
        0x7f100299
        0x7f10029b
        0x7f1001fd
        0x7f1001fa
        0x7f100234
        0x7f10012a
        0x7f100134
        0x7f100130
        0x7f1005f4
        0x7f10012d
        0x7f10012e
        0x7f100070
        0x7f10032a
        0x7f100075
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->a:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->b:I

    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lcom/oplus/camera/ui/a/b;->c:I

    .line 30
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->d:Z

    .line 31
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->e:Z

    .line 32
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->f:Z

    .line 33
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->g:Z

    .line 34
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->h:Z

    .line 35
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->i:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/oplus/camera/ui/a/b;->j:Z

    .line 37
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->k:Z

    .line 38
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->l:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->m:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->n:I

    .line 41
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->o:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->p:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/a/b;->q:[Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/oplus/camera/ui/a/b$b;->STRING:Lcom/oplus/camera/ui/a/b$b;

    iput-object v0, p0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    .line 46
    sget-object v0, Lcom/oplus/camera/ui/a/b$a;->TEMP:Lcom/oplus/camera/ui/a/b$a;

    iput-object v0, p0, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    return-void
.end method

.method public varargs constructor <init>(IZZIIIIZZZI[Ljava/lang/Object;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->a:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->b:I

    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lcom/oplus/camera/ui/a/b;->c:I

    .line 30
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->d:Z

    .line 31
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->e:Z

    .line 32
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->f:Z

    .line 33
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->g:Z

    .line 34
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->h:Z

    .line 35
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->i:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/oplus/camera/ui/a/b;->j:Z

    .line 37
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->k:Z

    .line 38
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->l:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->m:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->n:I

    .line 41
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->o:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->p:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/a/b;->q:[Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/oplus/camera/ui/a/b$b;->STRING:Lcom/oplus/camera/ui/a/b$b;

    iput-object v0, p0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    .line 46
    sget-object v0, Lcom/oplus/camera/ui/a/b$a;->TEMP:Lcom/oplus/camera/ui/a/b$a;

    iput-object v0, p0, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    .line 55
    iput p1, p0, Lcom/oplus/camera/ui/a/b;->a:I

    .line 56
    iput p11, p0, Lcom/oplus/camera/ui/a/b;->c:I

    .line 57
    iput-boolean p2, p0, Lcom/oplus/camera/ui/a/b;->d:Z

    .line 58
    iput-boolean p3, p0, Lcom/oplus/camera/ui/a/b;->f:Z

    .line 59
    iput p5, p0, Lcom/oplus/camera/ui/a/b;->l:I

    .line 60
    iput p6, p0, Lcom/oplus/camera/ui/a/b;->m:I

    .line 61
    iput-boolean p9, p0, Lcom/oplus/camera/ui/a/b;->g:Z

    .line 62
    sget-object p1, Lcom/oplus/camera/ui/a/b$b;->STRING:Lcom/oplus/camera/ui/a/b$b;

    iput-object p1, p0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    .line 63
    iput-object p12, p0, Lcom/oplus/camera/ui/a/b;->q:[Ljava/lang/Object;

    .line 64
    iput-boolean p8, p0, Lcom/oplus/camera/ui/a/b;->h:Z

    .line 65
    iput p4, p0, Lcom/oplus/camera/ui/a/b;->n:I

    .line 66
    iput p7, p0, Lcom/oplus/camera/ui/a/b;->p:I

    .line 67
    iput-boolean p10, p0, Lcom/oplus/camera/ui/a/b;->i:Z

    .line 68
    invoke-static {p0}, Lcom/oplus/camera/ui/a/b;->a(Lcom/oplus/camera/ui/a/b;)Lcom/oplus/camera/ui/a/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    return-void
.end method

.method public constructor <init>(IZZIZI)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->a:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->b:I

    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lcom/oplus/camera/ui/a/b;->c:I

    .line 30
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->d:Z

    .line 31
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->e:Z

    .line 32
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->f:Z

    .line 33
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->g:Z

    .line 34
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->h:Z

    .line 35
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->i:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/oplus/camera/ui/a/b;->j:Z

    .line 37
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a/b;->k:Z

    .line 38
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->l:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->m:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->n:I

    .line 41
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->o:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/a/b;->p:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/a/b;->q:[Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/oplus/camera/ui/a/b$b;->STRING:Lcom/oplus/camera/ui/a/b$b;

    iput-object v0, p0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    .line 46
    sget-object v0, Lcom/oplus/camera/ui/a/b$a;->TEMP:Lcom/oplus/camera/ui/a/b$a;

    iput-object v0, p0, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    .line 73
    iput p1, p0, Lcom/oplus/camera/ui/a/b;->b:I

    .line 74
    iput-boolean p2, p0, Lcom/oplus/camera/ui/a/b;->e:Z

    .line 75
    iput-boolean p3, p0, Lcom/oplus/camera/ui/a/b;->f:Z

    .line 76
    iput-boolean p5, p0, Lcom/oplus/camera/ui/a/b;->g:Z

    .line 77
    sget-object p1, Lcom/oplus/camera/ui/a/b$b;->ICON:Lcom/oplus/camera/ui/a/b$b;

    iput-object p1, p0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    .line 78
    iput p4, p0, Lcom/oplus/camera/ui/a/b;->n:I

    .line 79
    iput p6, p0, Lcom/oplus/camera/ui/a/b;->p:I

    .line 80
    invoke-static {p0}, Lcom/oplus/camera/ui/a/b;->a(Lcom/oplus/camera/ui/a/b;)Lcom/oplus/camera/ui/a/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    return-void
.end method

.method public static a(Lcom/oplus/camera/ui/a/b;)Lcom/oplus/camera/ui/a/b$a;
    .locals 6

    if-nez p0, :cond_0

    .line 85
    sget-object p0, Lcom/oplus/camera/ui/a/b$a;->UNKNOWN:Lcom/oplus/camera/ui/a/b$a;

    return-object p0

    .line 88
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/a/b$b;->AI_SCENE:Lcom/oplus/camera/ui/a/b$b;

    iget-object v1, p0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    if-ne v0, v1, :cond_1

    .line 89
    sget-object p0, Lcom/oplus/camera/ui/a/b$a;->SPECIAL:Lcom/oplus/camera/ui/a/b$a;

    return-object p0

    .line 92
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/a/b$b;->ICON:Lcom/oplus/camera/ui/a/b$b;

    iget-object v1, p0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    if-ne v0, v1, :cond_2

    .line 93
    sget-object p0, Lcom/oplus/camera/ui/a/b$a;->SPECIAL:Lcom/oplus/camera/ui/a/b$a;

    return-object p0

    .line 96
    :cond_2
    sget-object v0, Lcom/oplus/camera/ui/a/b;->t:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, v0, v3

    .line 97
    iget v5, p0, Lcom/oplus/camera/ui/a/b;->a:I

    if-ne v4, v5, :cond_3

    .line 98
    sget-object p0, Lcom/oplus/camera/ui/a/b$a;->TEMP_COMPATIBLE:Lcom/oplus/camera/ui/a/b$a;

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_4
    sget-object v0, Lcom/oplus/camera/ui/a/b;->u:[I

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_6

    aget v3, v0, v2

    .line 103
    iget v4, p0, Lcom/oplus/camera/ui/a/b;->a:I

    if-ne v3, v4, :cond_5

    .line 104
    sget-object p0, Lcom/oplus/camera/ui/a/b$a;->CONDITION:Lcom/oplus/camera/ui/a/b$a;

    return-object p0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    :cond_6
    sget-object p0, Lcom/oplus/camera/ui/a/b$a;->TEMP:Lcom/oplus/camera/ui/a/b$a;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 143
    instance-of v0, p1, Lcom/oplus/camera/ui/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/a/b;->hashCode()I

    move-result p0

    check-cast p1, Lcom/oplus/camera/ui/a/b;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/a/b;->hashCode()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/oplus/camera/ui/a/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 118
    iget v0, p0, Lcom/oplus/camera/ui/a/b;->a:I

    const-string v1, " @ "

    const-string v2, ""

    if-lez v0, :cond_1

    .line 120
    iget v0, p0, Lcom/oplus/camera/ui/a/b;->c:I

    const/4 v3, -0x1

    const-string v4, "text:"

    if-le v0, v3, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/a/b;->a:I

    iget v3, p0, Lcom/oplus/camera/ui/a/b;->c:I

    iget-object v4, p0, Lcom/oplus/camera/ui/a/b;->q:[Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/oplus/camera/util/Util;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/a/b;->a:I

    iget-object v3, p0, Lcom/oplus/camera/ui/a/b;->q:[Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/oplus/camera/util/Util;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "text:null @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mHintType:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/a/b;->r:Lcom/oplus/camera/ui/a/b$b;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mHintCategory:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/a/b;->s:Lcom/oplus/camera/ui/a/b$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIconId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/a/b;->b:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
