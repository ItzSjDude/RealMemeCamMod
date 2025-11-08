.class public Lcom/oplus/camera/doubleexposure/f;
.super Ljava/lang/Object;
.source "EffectType.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/oplus/camera/doubleexposure/f;->d:Z

    .line 17
    iput p1, p0, Lcom/oplus/camera/doubleexposure/f;->a:I

    .line 18
    iput p2, p0, Lcom/oplus/camera/doubleexposure/f;->b:I

    .line 19
    iput-object p3, p0, Lcom/oplus/camera/doubleexposure/f;->c:Ljava/lang/String;

    .line 20
    iput-boolean p4, p0, Lcom/oplus/camera/doubleexposure/f;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/oplus/camera/doubleexposure/f;->a:I

    return p0
.end method

.method public a(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/oplus/camera/doubleexposure/f;->d:Z

    return-void
.end method

.method public b()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/oplus/camera/doubleexposure/f;->b:I

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/doubleexposure/f;->d:Z

    return p0
.end method
