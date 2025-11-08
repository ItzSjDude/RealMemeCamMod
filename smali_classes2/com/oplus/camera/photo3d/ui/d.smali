.class public Lcom/oplus/camera/photo3d/ui/d;
.super Ljava/lang/Object;
.source "SceneItem.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IZ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/oplus/camera/photo3d/ui/d;->a:I

    .line 11
    iput-object p2, p0, Lcom/oplus/camera/photo3d/ui/d;->b:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/oplus/camera/photo3d/ui/d;->c:I

    .line 13
    iput-boolean p4, p0, Lcom/oplus/camera/photo3d/ui/d;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 17
    iget p0, p0, Lcom/oplus/camera/photo3d/ui/d;->a:I

    return p0
.end method

.method public a(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/photo3d/ui/d;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/oplus/camera/photo3d/ui/d;->c:I

    return p0
.end method

.method public d()Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/ui/d;->d:Z

    return p0
.end method
