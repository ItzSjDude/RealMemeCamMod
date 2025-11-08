.class public Lcom/oplus/camera/photo3d/ui/a;
.super Ljava/lang/Object;
.source "GuideItem.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/net/Uri;

.field private e:Z


# direct methods
.method public constructor <init>(IIILandroid/net/Uri;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/oplus/camera/photo3d/ui/a;->a:I

    .line 14
    iput p2, p0, Lcom/oplus/camera/photo3d/ui/a;->b:I

    .line 15
    iput p3, p0, Lcom/oplus/camera/photo3d/ui/a;->c:I

    .line 16
    iput-object p4, p0, Lcom/oplus/camera/photo3d/ui/a;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 20
    iget p0, p0, Lcom/oplus/camera/photo3d/ui/a;->a:I

    return p0
.end method

.method public b()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/oplus/camera/photo3d/ui/a;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/oplus/camera/photo3d/ui/a;->c:I

    return p0
.end method

.method public d()Landroid/net/Uri;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/a;->d:Landroid/net/Uri;

    return-object p0
.end method

.method public e()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/ui/a;->e:Z

    return p0
.end method
