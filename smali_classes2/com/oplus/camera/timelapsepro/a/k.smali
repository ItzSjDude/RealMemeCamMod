.class public Lcom/oplus/camera/timelapsepro/a/k;
.super Ljava/lang/Object;
.source "TemplateInfo.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/k;->a:I

    .line 19
    iput-boolean p2, p0, Lcom/oplus/camera/timelapsepro/a/k;->b:Z

    .line 20
    iput-object p3, p0, Lcom/oplus/camera/timelapsepro/a/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/oplus/camera/timelapsepro/a/k;->a:I

    return p0
.end method

.method public a(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/a/k;->b:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a/k;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/a/k;->b:Z

    return p0
.end method
