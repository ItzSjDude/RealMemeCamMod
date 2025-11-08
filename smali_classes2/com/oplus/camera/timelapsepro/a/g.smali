.class public abstract Lcom/oplus/camera/timelapsepro/a/g;
.super Ljava/lang/Object;
.source "ScaleDataWrapper.java"


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/g;->e:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public f_()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/g;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public g_()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/g;->d:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
