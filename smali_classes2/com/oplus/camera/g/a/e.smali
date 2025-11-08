.class public Lcom/oplus/camera/g/a/e;
.super Ljava/lang/Object;
.source "ExifModel.java"


# instance fields
.field public a:Ljava/nio/ByteOrder;

.field public b:Lcom/oplus/camera/g/a/d;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/g/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/g/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/g/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/oplus/camera/g/a/c;

.field public g:Lcom/oplus/camera/g/a/c;

.field public h:Lcom/oplus/camera/g/a/c;

.field public i:Ljava/nio/ByteBuffer;

.field public j:Ljava/nio/ByteBuffer;

.field public k:I

.field private l:Ljava/lang/Runtime;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->a:Ljava/nio/ByteOrder;

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->b:Lcom/oplus/camera/g/a/d;

    .line 19
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->c:Ljava/util/ArrayList;

    .line 20
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    .line 25
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->i:Ljava/nio/ByteBuffer;

    .line 26
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/oplus/camera/g/a/e;->k:I

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->l:Ljava/lang/Runtime;

    .line 31
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/g/a/e;->i:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a([B)Lcom/oplus/camera/g/a/e;
    .locals 2

    if-eqz p0, :cond_2

    .line 325
    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    new-instance v0, Lcom/oplus/camera/g/a/e;

    invoke-direct {v0, p0}, Lcom/oplus/camera/g/a/e;-><init>([B)V

    const/4 v1, 0x0

    .line 331
    aget-byte p0, p0, v1

    const/16 v1, 0x49

    if-ne p0, v1, :cond_1

    .line 332
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object p0, v0, Lcom/oplus/camera/g/a/e;->a:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 334
    :cond_1
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object p0, v0, Lcom/oplus/camera/g/a/e;->a:Ljava/nio/ByteOrder;

    .line 337
    :goto_0
    iget-object p0, v0, Lcom/oplus/camera/g/a/e;->i:Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/oplus/camera/g/a/e;->a:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 338
    iget-object p0, v0, Lcom/oplus/camera/g/a/e;->i:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/oplus/camera/g/a/d;->a(Ljava/nio/ByteBuffer;)Lcom/oplus/camera/g/a/d;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/g/a/e;->b:Lcom/oplus/camera/g/a/d;

    .line 339
    invoke-virtual {v0}, Lcom/oplus/camera/g/a/e;->c()V

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/oplus/camera/g/a/b;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/oplus/camera/g/a/c;

    invoke-direct {v0}, Lcom/oplus/camera/g/a/c;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    iget-object p0, p0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/oplus/camera/g/a/c;)V
    .locals 7

    .line 212
    iget-wide v0, p1, Lcom/oplus/camera/g/a/c;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/g/a/c;

    .line 216
    iget-wide v3, p1, Lcom/oplus/camera/g/a/c;->h:J

    iget-wide v5, v2, Lcom/oplus/camera/g/a/c;->h:J

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private b(Lcom/oplus/camera/g/a/b;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/oplus/camera/g/a/c;

    invoke-direct {v0}, Lcom/oplus/camera/g/a/c;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    iget-object p0, p0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/oplus/camera/g/a/h;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    .line 131
    :cond_0
    new-instance v0, Lcom/oplus/camera/g/a/b;

    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->a:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/oplus/camera/g/a/b;-><init>(Ljava/nio/ByteOrder;)V

    .line 132
    new-instance v1, Lcom/oplus/camera/g/a/f;

    const/16 v2, 0x14a

    invoke-direct {v1, v2}, Lcom/oplus/camera/g/a/f;-><init>(I)V

    iput-object v1, v0, Lcom/oplus/camera/g/a/b;->g:Lcom/oplus/camera/g/a/f;

    .line 133
    new-instance v1, Lcom/oplus/camera/g/a/a$a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/oplus/camera/g/a/a$a;-><init>(I)V

    iput-object v1, v0, Lcom/oplus/camera/g/a/b;->h:Lcom/oplus/camera/g/a/a$a;

    const/4 v1, 0x2

    .line 134
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 135
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/oplus/camera/g/a/c;->b:Ljava/util/ArrayList;

    .line 136
    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object p0, p0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private f()V
    .locals 3

    .line 140
    new-instance v0, Lcom/oplus/camera/g/a/c;

    invoke-direct {v0}, Lcom/oplus/camera/g/a/c;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v1, v1, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/oplus/camera/g/a/h;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    const/16 v1, 0x14a

    .line 142
    invoke-virtual {v0, v1}, Lcom/oplus/camera/g/a/c;->a(I)Lcom/oplus/camera/g/a/b;

    .line 143
    iget-object v1, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/g/a/c;->a:I

    .line 144
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v1, v1, Lcom/oplus/camera/g/a/c;->e:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/oplus/camera/g/a/c;->e:Ljava/util/ArrayList;

    .line 145
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-wide v1, v1, Lcom/oplus/camera/g/a/c;->h:J

    iput-wide v1, v0, Lcom/oplus/camera/g/a/c;->h:J

    .line 146
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v1, v1, Lcom/oplus/camera/g/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private g()V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oplus/camera/g/a/c;->e:Ljava/util/ArrayList;

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v2, 0x101

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v2, v1, [I

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v2, 0x102

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    const/4 v2, 0x3

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v4, 0x106

    invoke-virtual {v0, v4}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v4, v1, [I

    const/4 v5, 0x2

    aput v5, v4, v3

    invoke-virtual {v0, v4}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 161
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v4, 0x111

    invoke-virtual {v0, v4}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v4, v1, [I

    aput v1, v4, v3

    invoke-virtual {v0, v4}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v4, 0x115

    invoke-virtual {v0, v4}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v4, v1, [I

    aput v2, v4, v3

    invoke-virtual {v0, v4}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v2, 0x117

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v2, v1, [I

    aput v5, v2, v3

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/oplus/camera/g/a/c;->f:Ljava/util/ArrayList;

    const/16 v2, 0xfe

    .line 165
    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    .line 166
    new-array v2, v1, [I

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 167
    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v0, p0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/g/a/c;->a:I

    return-void

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method private h()I
    .locals 5

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-long v1, v1

    .line 231
    invoke-virtual {v0}, Lcom/oplus/camera/g/a/c;->a()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    if-eqz v0, :cond_1

    int-to-long v1, v1

    .line 235
    invoke-virtual {v0}, Lcom/oplus/camera/g/a/c;->a()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    if-eqz v0, :cond_2

    int-to-long v1, v1

    .line 239
    invoke-virtual {v0}, Lcom/oplus/camera/g/a/c;->a()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/oplus/camera/g/a/h;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/g/a/c;

    int-to-long v1, v1

    .line 244
    invoke-virtual {v0}, Lcom/oplus/camera/g/a/c;->a()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private i()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/g/a/c;

    .line 276
    iget-object v2, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/oplus/camera/g/a/e;->k:I

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/g/a/c;->c(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/g/a/e;->k:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/g/a/e;->b:Lcom/oplus/camera/g/a/d;

    iget v2, v2, Lcom/oplus/camera/g/a/d;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 282
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->b:Lcom/oplus/camera/g/a/d;

    iget v0, v0, Lcom/oplus/camera/g/a/d;->c:I

    iput v0, p0, Lcom/oplus/camera/g/a/e;->k:I

    return-void
.end method

.method private k()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/oplus/camera/g/a/e;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/g/a/c;->b(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/g/a/e;->k:I

    return-void
.end method

.method private l()V
    .locals 6

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    const v2, 0x8769

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/oplus/camera/g/a/e;->k:I

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/g/a/c;->a(Ljava/nio/ByteBuffer;I[I)V

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/oplus/camera/g/a/e;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/g/a/c;->b(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/g/a/e;->k:I

    return-void
.end method

.method private m()V
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    const v2, 0x8825

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/oplus/camera/g/a/e;->k:I

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/g/a/c;->a(Ljava/nio/ByteBuffer;I[I)V

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/oplus/camera/g/a/e;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/g/a/c;->b(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/g/a/e;->k:I

    return-void
.end method

.method private n()V
    .locals 6

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/oplus/camera/g/a/h;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 315
    iget-object v2, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/g/a/c;

    .line 316
    iget v4, p0, Lcom/oplus/camera/g/a/e;->k:I

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 318
    iget-object v5, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5, v4}, Lcom/oplus/camera/g/a/c;->b(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/g/a/e;->k:I

    goto :goto_0

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    const/16 v2, 0x14a

    invoke-virtual {v1, p0, v2, v0}, Lcom/oplus/camera/g/a/c;->a(Ljava/nio/ByteBuffer;I[I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v0, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/g/a/b;

    .line 68
    sget-object v2, Lcom/oplus/camera/g/a/a;->a:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/oplus/camera/g/a/b;->g:Lcom/oplus/camera/g/a/f;

    iget v3, v3, Lcom/oplus/camera/g/a/f;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/g/a/g;

    if-nez v2, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget v3, v2, Lcom/oplus/camera/g/a/g;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 75
    invoke-direct {p0, v1}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/b;)V

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 79
    :cond_2
    iget v3, v2, Lcom/oplus/camera/g/a/g;->c:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 80
    invoke-direct {p0, v1}, Lcom/oplus/camera/g/a/e;->b(Lcom/oplus/camera/g/a/b;)V

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 84
    :cond_3
    iget v1, v2, Lcom/oplus/camera/g/a/g;->c:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v1, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/g/a/c;->a:I

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 92
    iget-object v3, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lcom/oplus/camera/g/a/c;->a:I

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const v3, 0x8769

    invoke-virtual {v0, v3}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    new-array v4, v1, [I

    aput v2, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    if-eqz v0, :cond_6

    .line 100
    iget-object v3, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lcom/oplus/camera/g/a/c;->a:I

    .line 102
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const v3, 0x8825

    invoke-virtual {v0, v3}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    if-nez v0, :cond_6

    .line 103
    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    new-array v0, v1, [I

    aput v2, v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    :cond_6
    return-void
.end method

.method public a(Lcom/oplus/camera/g/a/c;J)V
    .locals 6

    .line 35
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 36
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p2

    .line 35
    invoke-static {p0, p2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "yyyy:MM:dd HH:mm:ss"

    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u0000"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSS"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XXX"

    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p3, 0x9003

    .line 40
    invoke-virtual {p1, p3}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v1

    const v2, 0x9291

    .line 41
    invoke-virtual {p1, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v3

    const v4, 0x9011

    .line 42
    invoke-virtual {p1, v4}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v5

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p1, p3, p2}, Lcom/oplus/camera/g/a/c;->a(ILjava/lang/String;)Z

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1, p2}, Lcom/oplus/camera/g/a/b;->a(Ljava/lang/String;)V

    :goto_0
    if-nez v3, :cond_1

    .line 51
    invoke-virtual {p1, v2, v0}, Lcom/oplus/camera/g/a/c;->a(ILjava/lang/String;)Z

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v3, v0}, Lcom/oplus/camera/g/a/b;->a(Ljava/lang/String;)V

    :goto_1
    if-nez v5, :cond_2

    .line 57
    invoke-virtual {p1, v4, p0}, Lcom/oplus/camera/g/a/c;->a(ILjava/lang/String;)Z

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v5, p0}, Lcom/oplus/camera/g/a/b;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a(J)Z
    .locals 6

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->l:Ljava/lang/Runtime;

    if-nez v0, :cond_0

    .line 347
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->l:Ljava/lang/Runtime;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->l:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 351
    iget-object v2, p0, Lcom/oplus/camera/g/a/e;->l:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 352
    iget-object p0, p0, Lcom/oplus/camera/g/a/e;->l:Ljava/lang/Runtime;

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    cmp-long p0, v0, p1

    if-gtz p0, :cond_1

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkMemory, realfree <= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExifModel"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->e()V

    .line 172
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->f()V

    .line 173
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->g()V

    return-void
.end method

.method public c()V
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->i:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->b:Lcom/oplus/camera/g/a/d;

    iget v1, v1, Lcom/oplus/camera/g/a/d;->c:I

    invoke-static {v0, v1}, Lcom/oplus/camera/g/a/c;->a(Ljava/nio/ByteBuffer;I)Lcom/oplus/camera/g/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    invoke-direct {p0, v0}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;)V

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v0, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/g/a/b;

    .line 182
    iget-object v2, v1, Lcom/oplus/camera/g/a/b;->g:Lcom/oplus/camera/g/a/f;

    iget v2, v2, Lcom/oplus/camera/g/a/f;->a:I

    const/16 v3, 0x14a

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x8769

    if-eq v2, v3, :cond_2

    const v3, 0x8825

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/g/a/e;->i:Ljava/nio/ByteBuffer;

    iget-object v1, v1, Lcom/oplus/camera/g/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/oplus/camera/g/a/c;->a(Ljava/nio/ByteBuffer;I)Lcom/oplus/camera/g/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    .line 190
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->h:Lcom/oplus/camera/g/a/c;

    invoke-direct {p0, v1}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/g/a/e;->i:Ljava/nio/ByteBuffer;

    iget-object v1, v1, Lcom/oplus/camera/g/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/oplus/camera/g/a/c;->a(Ljava/nio/ByteBuffer;I)Lcom/oplus/camera/g/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    .line 185
    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    invoke-direct {p0, v1}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;)V

    goto :goto_0

    .line 194
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    .line 197
    :goto_1
    iget-object v2, v1, Lcom/oplus/camera/g/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/oplus/camera/g/a/e;->i:Ljava/nio/ByteBuffer;

    iget-object v3, v1, Lcom/oplus/camera/g/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/camera/g/a/c;->a(Ljava/nio/ByteBuffer;I)Lcom/oplus/camera/g/a/c;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-direct {p0, v2}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public d()V
    .locals 3

    .line 252
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    int-to-long v1, v0

    .line 254
    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/g/a/e;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 258
    iput v1, p0, Lcom/oplus/camera/g/a/e;->k:I

    .line 259
    new-array v0, v0, [B

    .line 260
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    .line 261
    iget-object v0, p0, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/oplus/camera/g/a/e;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 262
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->j()V

    .line 263
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->k()V

    .line 264
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->l()V

    .line 265
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->m()V

    .line 266
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->n()V

    .line 267
    invoke-direct {p0}, Lcom/oplus/camera/g/a/e;->i()V

    return-void
.end method
