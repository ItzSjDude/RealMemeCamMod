.class public Lcom/oplus/camera/timelapsepro/a/d;
.super Lcom/oplus/camera/timelapsepro/a/e;
.source "ISOParameter.java"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "pref_time_lapse_pro_iso_key"

    .line 20
    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/camera/timelapsepro/a/e;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/d;->f:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/d;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/d;->h:I

    .line 22
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a/d;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/oplus/camera/timelapsepro/a/e;->a(I)V

    .line 34
    iget v0, p0, Lcom/oplus/camera/timelapsepro/a/d;->h:I

    if-ne v0, p1, :cond_0

    return-void

    .line 38
    :cond_0
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/d;->e:I

    .line 39
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/a/d;->f:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/a/d;->g:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a/d;->p()V

    .line 44
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/d;->h:I

    return-void
.end method

.method public c()I
    .locals 0

    const p0, 0x7f080651

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/d;->g:Ljava/lang/String;

    return-object p0
.end method
