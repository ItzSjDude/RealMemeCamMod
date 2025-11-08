.class public Lcom/oplus/camera/timelapsepro/a/b;
.super Lcom/oplus/camera/timelapsepro/a/e;
.source "ExposureParameter.java"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "pref_time_lapse_pro_exposure_compensation_key"

    const/4 v1, 0x3

    .line 20
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/b;->f:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/b;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/b;->h:I

    .line 21
    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/a/b;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/oplus/camera/timelapsepro/a/e;->a(I)V

    .line 40
    iget v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->h:I

    if-ne v0, p1, :cond_0

    return-void

    .line 44
    :cond_0
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/b;->e:I

    .line 45
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->f:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->g:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a/b;->p()V

    .line 50
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/b;->h:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/b;->g:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/a/b;->d:Ljava/util/List;

    iget v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->e:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/b;->g:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->e:I

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->c:Ljava/util/List;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/a/b;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->f:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->d:Ljava/util/List;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/a/b;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/a/b;->g:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a/b;->p()V

    return-void
.end method

.method public c()I
    .locals 0

    const p0, 0x7f08064f

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/b;->g:Ljava/lang/String;

    return-object p0
.end method
