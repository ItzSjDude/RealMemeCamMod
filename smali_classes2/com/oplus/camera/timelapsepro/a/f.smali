.class public Lcom/oplus/camera/timelapsepro/a/f;
.super Lcom/oplus/camera/timelapsepro/a/e;
.source "ResetParameter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "pref_time_lapse_pro_reset_key"

    .line 17
    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/camera/timelapsepro/a/e;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a/f;->b(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 0

    const p0, 0x7f080665

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()I
    .locals 0

    const p0, 0x7f0f003c

    return p0
.end method

.method public m()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
