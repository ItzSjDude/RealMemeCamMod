.class public Lcom/oplus/camera/ui/preview/a/l;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "FilterTexturePreview.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/aa$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/a/l$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "0ms"


# instance fields
.field private b:Lcom/oplus/camera/ui/preview/a/l$a;

.field private c:I

.field private d:I

.field private k:Lcom/oplus/camera/gl/s;

.field private l:Lcom/oplus/camera/gl/s;

.field private m:Lcom/oplus/camera/ui/preview/a/aa;

.field private n:Lcom/oplus/camera/ui/preview/a/a;

.field private o:Lcom/oplus/camera/ui/preview/a/a;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object p1, Lcom/oplus/camera/ui/preview/a/l$a;->Polarr:Lcom/oplus/camera/ui/preview/a/l$a;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->b:Lcom/oplus/camera/ui/preview/a/l$a;

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/l;->c:I

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/l;->d:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->m:Lcom/oplus/camera/ui/preview/a/aa;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->n:Lcom/oplus/camera/ui/preview/a/a;

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->o:Lcom/oplus/camera/ui/preview/a/a;

    .line 45
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/l;->p:Z

    .line 46
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/l;->q:Z

    const-string v0, "default"

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->r:Ljava/lang/String;

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/l;->s:Z

    const-string p1, ""

    .line 49
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->t:Ljava/lang/String;

    .line 53
    new-instance p1, Lcom/oplus/camera/ui/preview/a/s;

    invoke-direct {p1}, Lcom/oplus/camera/ui/preview/a/s;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->n:Lcom/oplus/camera/ui/preview/a/a;

    .line 54
    new-instance p1, Lcom/oplus/camera/ui/preview/a/b;

    invoke-direct {p1}, Lcom/oplus/camera/ui/preview/a/b;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->o:Lcom/oplus/camera/ui/preview/a/a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/l;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l;->m:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/l;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->m:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/l;)Lcom/oplus/camera/ui/preview/a/a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l;->n:Lcom/oplus/camera/ui/preview/a/a;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/l;)Lcom/oplus/camera/ui/preview/a/a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l;->o:Lcom/oplus/camera/ui/preview/a/a;

    return-object p0
.end method

.method private q()Lcom/oplus/camera/ui/preview/a/a;
    .locals 2

    .line 62
    sget-object v0, Lcom/oplus/camera/ui/preview/a/l$a;->Polarr:Lcom/oplus/camera/ui/preview/a/l$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/l;->b:Lcom/oplus/camera/ui/preview/a/l$a;

    if-ne v0, v1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l;->n:Lcom/oplus/camera/ui/preview/a/a;

    return-object p0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l;->o:Lcom/oplus/camera/ui/preview/a/a;

    return-object p0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/l;->c:I

    .line 277
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/l;->d:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    const-string v1, "FilterTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputTexture id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputTexture id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/s;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 2

    const-string v0, "FilterTexturePreview"

    const-string v1, "createEngine"

    .line 169
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->m:Lcom/oplus/camera/ui/preview/a/aa;

    .line 173
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->m:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/a/aa;->a(Lcom/oplus/camera/ui/preview/a/aa$c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/l$a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->b:Lcom/oplus/camera/ui/preview/a/l$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->t:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/l;->p:Z

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->m:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->t:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/l;->s:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/l;->a_(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    const-string v0, "FilterTexturePreview"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    if-nez p1, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/l;->q:Z

    if-nez p0, :cond_3

    const-string p0, "canProcess, texture is not inited"

    .line 149
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 142
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canProcess, mOutputTexture or mInputTexture is null, mOutputTexture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mInputTexture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return v1
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 13

    .line 71
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/l;->m:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    iget-object v2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/l;->t:Ljava/lang/String;

    .line 78
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/l;->m:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/a/aa;->n()Z

    move-result v4

    const-string v5, "default"

    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/l;->q()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/l;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/l;->g()Lcom/oplus/camera/gl/s;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/camera/gl/s;->h()I

    move-result v7

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/l;->g()Lcom/oplus/camera/gl/s;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/camera/gl/s;->i()I

    move-result v8

    iget-boolean v9, p0, Lcom/oplus/camera/ui/preview/a/l;->p:Z

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/oplus/camera/ui/preview/a/a;->a(Landroid/content/Context;IIZ)V

    const-string v5, "Filter.process"

    .line 87
    invoke-static {v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/l;->q()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object v6

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v7}, Lcom/oplus/camera/gl/s;->e()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/oplus/camera/ui/preview/a/a;->a(I)V

    .line 90
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/l;->q()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object v6

    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/s;->e()I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/oplus/camera/ui/preview/a/a;->b(I)V

    .line 92
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/l;->p:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/l;->r:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    if-eqz v4, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/l;->q()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object v6

    const v7, -0x40cccccd    # -0.7f

    const v8, 0x3ee147ae    # 0.44f

    const v9, 0x3f547ae1    # 0.83f

    const/high16 v10, 0x3e800000    # 0.25f

    const v11, -0x40c28f5c    # -0.74f

    const v12, 0x3f7ae148    # 0.98f

    invoke-virtual/range {v6 .. v12}, Lcom/oplus/camera/ui/preview/a/a;->a(FFFFFF)V

    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/l;->q()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/preview/a/a;->a(Ljava/lang/String;)V

    .line 99
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/l;->r:Ljava/lang/String;

    .line 102
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/l;->q()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/a;->b()V

    if-eqz v4, :cond_5

    .line 105
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/l;->q()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/a;->c()V

    goto :goto_0

    .line 107
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/l;->q()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/a;->d()V

    .line 110
    :goto_0
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/l;->p:Z

    .line 112
    invoke-static {v5}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide p0

    .line 116
    invoke-static {v0, v1, p0, p1}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/ui/preview/a/l;->a:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    return v3
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/l;->s:Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public e()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/l$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/l$1;-><init>(Lcom/oplus/camera/ui/preview/a/l;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "FilterTexturePreview"

    const-string v1, "newTextures"

    .line 222
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/l;->c:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/l;->d:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    .line 225
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/l;->c:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/l;->d:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    .line 226
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/l;->q:Z

    return-void
.end method

.method public j()V
    .locals 4

    .line 251
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/l;->q:Z

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    const-string v2, "FilterTexturePreview"

    if-eqz v0, :cond_1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, mInputTexture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 259
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/l;->k:Lcom/oplus/camera/gl/s;

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, mOutputTexture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 266
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/l;->l:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/l;->q:Z

    return-void
.end method
