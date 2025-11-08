.class public Lcom/oplus/camera/timelapsepro/a/h;
.super Lcom/oplus/camera/timelapsepro/a/e;
.source "ShutterParameter.java"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "pref_time_lapse_pro_exposure_time_key"

    const/4 v1, 0x2

    .line 22
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const-string p1, ""

    .line 17
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/h;->f:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/h;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/h;->h:I

    .line 24
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/a/h;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/h;->a:Landroid/content/res/Resources;

    const v1, 0x7f030082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/a/h;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/h;->a:Landroid/content/res/Resources;

    const v1, 0x7f030081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/a/h;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/oplus/camera/timelapsepro/a/e;->a(I)V

    .line 39
    iget v0, p0, Lcom/oplus/camera/timelapsepro/a/h;->h:I

    if-ne v0, p1, :cond_0

    return-void

    .line 43
    :cond_0
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/h;->e:I

    .line 44
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/a/h;->f:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/a/h;->g:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a/h;->p()V

    .line 49
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/h;->h:I

    return-void
.end method

.method public c()I
    .locals 0

    const p0, 0x7f080667

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/h;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/h;->g:Ljava/lang/String;

    return-object p0
.end method
