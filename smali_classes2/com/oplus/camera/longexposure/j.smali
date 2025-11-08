.class public Lcom/oplus/camera/longexposure/j;
.super Ljava/lang/Object;
.source "LongExposureSceneItem.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/oplus/camera/longexposure/j;->a:I

    .line 18
    iput-object p2, p0, Lcom/oplus/camera/longexposure/j;->b:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/oplus/camera/longexposure/j;->c:I

    .line 20
    iput-boolean p4, p0, Lcom/oplus/camera/longexposure/j;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/oplus/camera/longexposure/j;->a:I

    return p0
.end method

.method public a(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/oplus/camera/longexposure/j;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oplus/camera/longexposure/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/oplus/camera/longexposure/j;->c:I

    return p0
.end method

.method public d()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/longexposure/j;->d:Z

    return p0
.end method
