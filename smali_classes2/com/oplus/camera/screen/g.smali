.class public Lcom/oplus/camera/screen/g;
.super Ljava/lang/Object;
.source "ScreenModeManager.java"

# interfaces
.implements Lcom/oplus/camera/screen/a/a;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/screen/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/oplus/camera/screen/f$a;

.field private c:Landroid/app/Activity;

.field private d:Lcom/oplus/camera/screen/b;

.field private e:Lcom/oplus/camera/screen/b/a;

.field private f:Lcom/oplus/camera/screen/b/a;

.field private g:Lcom/oplus/camera/screen/e;

.field private h:Lcom/oplus/camera/screen/a/e;

.field private i:Z

.field private j:Lcom/oplus/camera/capmode/BaseMode;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/screen/g;->c:Landroid/app/Activity;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/screen/g;->e:Lcom/oplus/camera/screen/b/a;

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/screen/g;->g:Lcom/oplus/camera/screen/e;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/oplus/camera/screen/g;->i:Z

    .line 40
    sget-object v1, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    iput-object v1, p0, Lcom/oplus/camera/screen/g;->b:Lcom/oplus/camera/screen/f$a;

    .line 42
    iput-boolean v0, p0, Lcom/oplus/camera/screen/g;->k:Z

    .line 43
    iput-boolean v0, p0, Lcom/oplus/camera/screen/g;->l:Z

    .line 44
    iput-boolean v0, p0, Lcom/oplus/camera/screen/g;->m:Z

    const/4 v1, 0x1

    .line 45
    iput v1, p0, Lcom/oplus/camera/screen/g;->n:I

    .line 46
    iput-boolean v1, p0, Lcom/oplus/camera/screen/g;->o:Z

    .line 47
    iput-boolean v1, p0, Lcom/oplus/camera/screen/g;->p:Z

    .line 50
    iput-object p1, p0, Lcom/oplus/camera/screen/g;->c:Landroid/app/Activity;

    .line 51
    new-instance v1, Lcom/oplus/camera/screen/a/e;

    invoke-direct {v1, p1, p0}, Lcom/oplus/camera/screen/a/e;-><init>(Landroid/content/Context;Lcom/oplus/camera/screen/a/a;)V

    iput-object v1, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    .line 53
    invoke-static {}, Lcom/oplus/camera/screen/f$a;->values()[Lcom/oplus/camera/screen/f$a;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 54
    sget-object v3, Lcom/oplus/camera/screen/g$2;->a:[I

    invoke-virtual {v2}, Lcom/oplus/camera/screen/f$a;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 80
    :pswitch_0
    iget-object v2, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    new-instance v3, Lcom/oplus/camera/screen/b/l;

    invoke-direct {v3}, Lcom/oplus/camera/screen/b/l;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :pswitch_1
    iget-object v2, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    new-instance v3, Lcom/oplus/camera/screen/b/m;

    invoke-direct {v3}, Lcom/oplus/camera/screen/b/m;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :pswitch_2
    iget-object v2, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    new-instance v3, Lcom/oplus/camera/screen/b/n;

    invoke-direct {v3}, Lcom/oplus/camera/screen/b/n;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :pswitch_3
    iget-object v2, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    new-instance v3, Lcom/oplus/camera/screen/b/i;

    invoke-direct {v3}, Lcom/oplus/camera/screen/b/i;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :pswitch_4
    iget-object v2, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    new-instance v3, Lcom/oplus/camera/screen/b/e;

    invoke-direct {v3}, Lcom/oplus/camera/screen/b/e;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :pswitch_5
    iget-object v2, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    new-instance v3, Lcom/oplus/camera/screen/b/f;

    invoke-direct {v3}, Lcom/oplus/camera/screen/b/f;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :pswitch_6
    iget-object v2, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    new-instance v3, Lcom/oplus/camera/screen/b/d;

    invoke-direct {v3}, Lcom/oplus/camera/screen/b/d;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :pswitch_7
    iget-object v2, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    new-instance v3, Lcom/oplus/camera/screen/b/j;

    invoke-direct {v3}, Lcom/oplus/camera/screen/b/j;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :pswitch_8
    iget-object v2, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    new-instance v3, Lcom/oplus/camera/screen/b/b;

    invoke-direct {v3}, Lcom/oplus/camera/screen/b/b;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    sget-object v0, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/f$a;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/screen/b/a;

    iput-object p1, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    .line 87
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    iget-boolean p0, p0, Lcom/oplus/camera/screen/g;->l:Z

    invoke-virtual {p1, p0}, Lcom/oplus/camera/screen/b/a;->a(Z)I

    move-result p0

    sput p0, Lcom/oplus/camera/statistics/DcsUtil;->sFoldType:I

    goto :goto_2

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    sget-object v0, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/f$a;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/screen/b/a;

    iput-object p1, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/oplus/camera/screen/g;)Landroid/app/Activity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private a(Lcom/oplus/camera/screen/f$a;Lcom/oplus/camera/screen/b/a;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    iput-object v0, p0, Lcom/oplus/camera/screen/g;->e:Lcom/oplus/camera/screen/b/a;

    .line 188
    iput-object p2, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    .line 189
    iput-object p1, p0, Lcom/oplus/camera/screen/g;->b:Lcom/oplus/camera/screen/f$a;

    .line 190
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/a/e;->a(Lcom/oplus/camera/screen/f$a;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b/a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->e:Lcom/oplus/camera/screen/b/a;

    return-object p0
.end method

.method private b(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/oplus/camera/screen/a/e;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/BaseMode;->getPreferredScreenMode(I)Lcom/oplus/camera/screen/f$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 282
    :goto_0
    sget-object v0, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Lcom/oplus/camera/screen/g;->o:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lcom/oplus/camera/screen/g;->o:Z

    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b/a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/screen/g;)Lcom/oplus/camera/screen/b;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/screen/g;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/oplus/camera/screen/g;->k:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/oplus/camera/screen/b/a;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/a/e;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/oplus/camera/screen/g;->j:Lcom/oplus/camera/capmode/BaseMode;

    .line 272
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/g;->b(Lcom/oplus/camera/capmode/BaseMode;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/f$a;ZZ)V
    .locals 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeScreenMode, screenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forceChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbStopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/screen/g;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenModeManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-boolean v0, p0, Lcom/oplus/camera/screen/g;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    iput-boolean p2, p0, Lcom/oplus/camera/screen/g;->k:Z

    .line 107
    iput-boolean p3, p0, Lcom/oplus/camera/screen/g;->l:Z

    const/4 p3, 0x0

    .line 110
    sget-object v0, Lcom/oplus/camera/screen/f$a;->low90:Lcom/oplus/camera/screen/f$a;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 111
    sget-object p3, Lcom/oplus/camera/screen/f$a;->rack90:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    .line 113
    :cond_1
    sget-object v0, Lcom/oplus/camera/screen/f$a;->low270:Lcom/oplus/camera/screen/f$a;

    if-ne p1, v0, :cond_2

    .line 114
    sget-object p3, Lcom/oplus/camera/screen/f$a;->rack270:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    :cond_2
    move v2, p3

    move-object p3, p1

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    invoke-virtual {p3}, Lcom/oplus/camera/screen/f$a;->ordinal()I

    move-result p3

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/screen/b/a;

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/camera/screen/g;->c:Landroid/app/Activity;

    if-nez v0, :cond_3

    goto/16 :goto_5

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeScreenMode, targetScreenMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentScreenMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCapMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v3, p0, Lcom/oplus/camera/screen/g;->j:Lcom/oplus/camera/capmode/BaseMode;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->j:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lcom/oplus/camera/screen/b/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/screen/g;->j:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    iget-object p3, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {p3}, Lcom/oplus/camera/screen/b/a;->c()Ljava/util/ArrayList;

    move-result-object p3

    iget-object v0, p0, Lcom/oplus/camera/screen/g;->j:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 132
    iget-object p3, p0, Lcom/oplus/camera/screen/g;->j:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    .line 133
    invoke-virtual {v0}, Lcom/oplus/camera/screen/a/e;->c()I

    move-result v0

    .line 132
    invoke-virtual {p3, v0}, Lcom/oplus/camera/capmode/BaseMode;->getPreferredScreenMode(I)Lcom/oplus/camera/screen/f$a;

    move-result-object p3

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->a:Ljava/util/List;

    invoke-virtual {p3}, Lcom/oplus/camera/screen/f$a;->ordinal()I

    move-result p3

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/screen/b/a;

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    if-nez p2, :cond_8

    .line 140
    iget-object p2, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    if-eq p2, p3, :cond_7

    goto :goto_3

    .line 175
    :cond_7
    invoke-virtual {p2}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result p2

    if-eq p2, v2, :cond_c

    .line 176
    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/screen/g;->a(Lcom/oplus/camera/screen/f$a;Lcom/oplus/camera/screen/b/a;)V

    .line 177
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    iget-object p2, p0, Lcom/oplus/camera/screen/g;->e:Lcom/oplus/camera/screen/b/a;

    iget-object p3, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/screen/b;->a(Lcom/oplus/camera/screen/b/a;Lcom/oplus/camera/screen/b/a;)V

    .line 178
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/screen/b/a;->b(Z)V

    .line 179
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    iget-object p2, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    iget-boolean p3, p0, Lcom/oplus/camera/screen/g;->k:Z

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/screen/b;->a(Lcom/oplus/camera/screen/b/a;Z)V

    .line 180
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    iget-object p2, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/screen/b;->a(Lcom/oplus/camera/screen/b/a;)V

    goto :goto_4

    .line 141
    :cond_8
    :goto_3
    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/screen/g;->a(Lcom/oplus/camera/screen/f$a;Lcom/oplus/camera/screen/b/a;)V

    .line 143
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 144
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/screen/b/a;->b(Z)V

    .line 147
    :cond_9
    iget-boolean p1, p0, Lcom/oplus/camera/screen/g;->i:Z

    if-eqz p1, :cond_b

    .line 148
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->g:Lcom/oplus/camera/screen/e;

    if-nez p1, :cond_a

    .line 149
    new-instance p1, Lcom/oplus/camera/screen/e;

    new-instance p2, Lcom/oplus/camera/screen/g$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/screen/g$1;-><init>(Lcom/oplus/camera/screen/g;)V

    invoke-direct {p1, p2}, Lcom/oplus/camera/screen/e;-><init>(Lcom/oplus/camera/screen/e$b;)V

    iput-object p1, p0, Lcom/oplus/camera/screen/g;->g:Lcom/oplus/camera/screen/e;

    .line 169
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->g:Lcom/oplus/camera/screen/e;

    invoke-virtual {p1}, Lcom/oplus/camera/screen/e;->a()V

    goto :goto_4

    .line 171
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    iget-object p2, p0, Lcom/oplus/camera/screen/g;->e:Lcom/oplus/camera/screen/b/a;

    iget-object p3, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/screen/b;->a(Lcom/oplus/camera/screen/b/a;Lcom/oplus/camera/screen/b/a;)V

    .line 172
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    iget-object p2, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    iget-boolean p3, p0, Lcom/oplus/camera/screen/g;->k:Z

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/screen/b;->a(Lcom/oplus/camera/screen/b/a;Z)V

    .line 173
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->d:Lcom/oplus/camera/screen/b;

    iget-object p2, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/screen/b;->a(Lcom/oplus/camera/screen/b/a;)V

    .line 183
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    iget-boolean p0, p0, Lcom/oplus/camera/screen/g;->l:Z

    invoke-virtual {p1, p0}, Lcom/oplus/camera/screen/b/a;->a(Z)I

    move-result p0

    sput p0, Lcom/oplus/camera/statistics/DcsUtil;->sFoldType:I

    :cond_d
    :goto_5
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/oplus/camera/screen/g;->m:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->j:Lcom/oplus/camera/capmode/BaseMode;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/screen/g;->j:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    if-eqz p0, :cond_1

    .line 339
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/a/e;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 341
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkIfScreenModeNeedChange, needChange: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenModeManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public b()I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    invoke-virtual {p0}, Lcom/oplus/camera/screen/a/e;->c()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/a/e;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/screen/f$a;ZZ)V
    .locals 2

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/oplus/camera/screen/f$a;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/screen/g;->b:Lcom/oplus/camera/screen/f$a;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/f$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFolderChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/screen/f$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenModeManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/screen/g;->a(Lcom/oplus/camera/screen/f$a;ZZ)V

    .line 260
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {p0, p3}, Lcom/oplus/camera/screen/b/a;->a(Z)I

    move-result p0

    sput p0, Lcom/oplus/camera/statistics/DcsUtil;->sFoldType:I

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->c:Landroid/app/Activity;

    const v0, 0x7f090312

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f080490

    .line 305
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0804b4

    .line 307
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lcom/oplus/camera/screen/a/e;->d(I)V

    :cond_0
    const/4 p1, 0x2

    .line 329
    iget v0, p0, Lcom/oplus/camera/screen/g;->n:I

    if-eq p1, v0, :cond_1

    const/4 p1, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/screen/g;->p:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/oplus/camera/screen/g;->i:Z

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/oplus/camera/screen/g;->m:Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->g:Lcom/oplus/camera/screen/e;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/oplus/camera/screen/e;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/oplus/camera/screen/g;->i:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/oplus/camera/screen/g;->m:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/oplus/camera/screen/g;->c:Landroid/app/Activity;

    .line 243
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/oplus/camera/screen/a/e;->a()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/oplus/camera/screen/a/e;->b()V

    :cond_0
    return-void
.end method

.method public i()Lcom/oplus/camera/screen/f$a;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->b:Lcom/oplus/camera/screen/f$a;

    return-object p0
.end method

.method public j()Lcom/oplus/camera/screen/a/e;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->h:Lcom/oplus/camera/screen/a/e;

    return-object p0
.end method

.method public k()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/oplus/camera/screen/g;->f:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/screen/g;->o:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/screen/g;->p:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l()V
    .locals 1

    .line 319
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->c:Landroid/app/Activity;

    if-eqz p0, :cond_0

    const v0, 0x7f090096

    .line 320
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public m()Lcom/oplus/camera/screen/b/a;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/oplus/camera/screen/g;->e:Lcom/oplus/camera/screen/b/a;

    return-object p0
.end method
