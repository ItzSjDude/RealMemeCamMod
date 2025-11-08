.class public Lcom/b/a/o$b;
.super Ljava/lang/Object;
.source "WavefrontLoaderO3d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/b/a/o$b;->a:F

    .line 142
    iput v0, p0, Lcom/b/a/o$b;->b:F

    .line 143
    iput v0, p0, Lcom/b/a/o$b;->c:F

    .line 144
    iput v0, p0, Lcom/b/a/o$b;->d:F

    .line 145
    iput v0, p0, Lcom/b/a/o$b;->e:F

    .line 146
    iput v0, p0, Lcom/b/a/o$b;->f:F

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/b/a/o$b;->b:F

    .line 150
    iput p1, p0, Lcom/b/a/o$b;->a:F

    .line 152
    iput p2, p0, Lcom/b/a/o$b;->c:F

    .line 153
    iput p2, p0, Lcom/b/a/o$b;->d:F

    .line 155
    iput p3, p0, Lcom/b/a/o$b;->f:F

    .line 156
    iput p3, p0, Lcom/b/a/o$b;->e:F

    return-void
.end method

.method public b(FFF)V
    .locals 1

    .line 160
    iget v0, p0, Lcom/b/a/o$b;->b:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 161
    iput p1, p0, Lcom/b/a/o$b;->b:F

    .line 162
    :cond_0
    iget v0, p0, Lcom/b/a/o$b;->a:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 163
    iput p1, p0, Lcom/b/a/o$b;->a:F

    .line 165
    :cond_1
    iget p1, p0, Lcom/b/a/o$b;->c:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    .line 166
    iput p2, p0, Lcom/b/a/o$b;->c:F

    .line 167
    :cond_2
    iget p1, p0, Lcom/b/a/o$b;->d:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    .line 168
    iput p2, p0, Lcom/b/a/o$b;->d:F

    .line 170
    :cond_3
    iget p1, p0, Lcom/b/a/o$b;->f:F

    cmpl-float p1, p3, p1

    if-lez p1, :cond_4

    .line 171
    iput p3, p0, Lcom/b/a/o$b;->f:F

    .line 172
    :cond_4
    iget p1, p0, Lcom/b/a/o$b;->e:F

    cmpg-float p1, p3, p1

    if-gez p1, :cond_5

    .line 173
    iput p3, p0, Lcom/b/a/o$b;->e:F

    :cond_5
    return-void
.end method
