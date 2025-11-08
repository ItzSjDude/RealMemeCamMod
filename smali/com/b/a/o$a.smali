.class public Lcom/b/a/o$a;
.super Ljava/lang/Object;
.source "WavefrontLoaderO3d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/b/a/o$a;->a:F

    .line 125
    iput v0, p0, Lcom/b/a/o$a;->b:F

    .line 126
    iput v0, p0, Lcom/b/a/o$a;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    iput v0, p0, Lcom/b/a/o$a;->d:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/b/a/o$a;->a:F

    .line 125
    iput v0, p0, Lcom/b/a/o$a;->b:F

    .line 126
    iput v0, p0, Lcom/b/a/o$a;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    iput v0, p0, Lcom/b/a/o$a;->d:F

    .line 133
    iput p1, p0, Lcom/b/a/o$a;->a:F

    .line 134
    iput p2, p0, Lcom/b/a/o$a;->b:F

    .line 135
    iput p3, p0, Lcom/b/a/o$a;->c:F

    .line 136
    iput p4, p0, Lcom/b/a/o$a;->d:F

    return-void
.end method
