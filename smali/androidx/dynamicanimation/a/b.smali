.class public Landroidx/dynamicanimation/a/b;
.super Landroidx/dynamicanimation/a/c;
.source "COUIPanelDragToHiddenAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/a/c<",
        "Landroidx/dynamicanimation/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private A:J

.field private final w:Landroidx/dynamicanimation/a/b$a;

.field private x:F

.field private y:F

.field private z:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/a/d<",
            "TK;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/a/c;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/a/d;)V

    .line 33
    new-instance p1, Landroidx/dynamicanimation/a/b$a;

    invoke-direct {p1}, Landroidx/dynamicanimation/a/b$a;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Landroidx/dynamicanimation/a/b;->x:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 35
    iput p1, p0, Landroidx/dynamicanimation/a/b;->y:F

    const-wide/16 p1, 0x0

    .line 36
    iput-wide p1, p0, Landroidx/dynamicanimation/a/b;->z:J

    const-wide/16 p1, 0x78

    .line 37
    iput-wide p1, p0, Landroidx/dynamicanimation/a/b;->A:J

    .line 65
    iget-object p1, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    invoke-virtual {p0}, Landroidx/dynamicanimation/a/b;->d()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/a/b$a;->a(F)V

    return-void
.end method


# virtual methods
.method public a(F)Landroidx/dynamicanimation/a/b;
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroidx/dynamicanimation/a/c;->e(F)Landroidx/dynamicanimation/a/c;

    return-object p0
.end method

.method public a()V
    .locals 5

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/a/b;->z:J

    .line 168
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    iget-wide v1, p0, Landroidx/dynamicanimation/a/b;->z:J

    invoke-static {v0, v1, v2}, Landroidx/dynamicanimation/a/b$a;->a(Landroidx/dynamicanimation/a/b$a;J)J

    .line 169
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    iget-wide v1, p0, Landroidx/dynamicanimation/a/b;->z:J

    iget-wide v3, p0, Landroidx/dynamicanimation/a/b;->A:J

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroidx/dynamicanimation/a/b$a;->b(Landroidx/dynamicanimation/a/b$a;J)J

    .line 170
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    iget v1, p0, Landroidx/dynamicanimation/a/b;->x:F

    invoke-static {v0, v1}, Landroidx/dynamicanimation/a/b$a;->a(Landroidx/dynamicanimation/a/b$a;F)F

    .line 171
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    iget v1, p0, Landroidx/dynamicanimation/a/b;->y:F

    invoke-static {v0, v1}, Landroidx/dynamicanimation/a/b$a;->b(Landroidx/dynamicanimation/a/b$a;F)F

    .line 172
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/dynamicanimation/a/b$a;->c(Landroidx/dynamicanimation/a/b$a;F)F

    .line 173
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    iget v1, p0, Landroidx/dynamicanimation/a/b;->u:F

    invoke-static {v0, v1}, Landroidx/dynamicanimation/a/b$a;->d(Landroidx/dynamicanimation/a/b$a;F)F

    .line 174
    invoke-super {p0}, Landroidx/dynamicanimation/a/c;->a()V

    return-void
.end method

.method a(FF)Z
    .locals 1

    .line 212
    iget v0, p0, Landroidx/dynamicanimation/a/b;->u:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroidx/dynamicanimation/a/b;->v:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object p0, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    .line 214
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/a/b$a;->a(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public b(F)Landroidx/dynamicanimation/a/b;
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroidx/dynamicanimation/a/c;->f(F)Landroidx/dynamicanimation/a/c;

    return-object p0
.end method

.method b(J)Z
    .locals 9

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 181
    iget-object v0, p0, Landroidx/dynamicanimation/a/b;->w:Landroidx/dynamicanimation/a/b$a;

    iget v1, p0, Landroidx/dynamicanimation/a/b;->p:F

    iget v2, p0, Landroidx/dynamicanimation/a/b;->o:F

    move-wide v3, v7

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/dynamicanimation/a/b$a;->a(FFJJ)Landroidx/dynamicanimation/a/c$a;

    move-result-object p1

    .line 182
    iget p2, p1, Landroidx/dynamicanimation/a/c$a;->a:F

    iput p2, p0, Landroidx/dynamicanimation/a/b;->p:F

    .line 183
    iget p1, p1, Landroidx/dynamicanimation/a/c$a;->b:F

    iput p1, p0, Landroidx/dynamicanimation/a/b;->o:F

    .line 186
    iget p1, p0, Landroidx/dynamicanimation/a/b;->y:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    if-ltz p1, :cond_1

    iget p1, p0, Landroidx/dynamicanimation/a/b;->o:F

    iget v0, p0, Landroidx/dynamicanimation/a/b;->y:F

    cmpg-float p1, p1, v0

    if-lez p1, :cond_0

    iget-wide v0, p0, Landroidx/dynamicanimation/a/b;->z:J

    iget-wide v2, p0, Landroidx/dynamicanimation/a/b;->A:J

    add-long/2addr v0, v2

    cmp-long p1, v7, v0

    if-ltz p1, :cond_1

    .line 187
    :cond_0
    iget p1, p0, Landroidx/dynamicanimation/a/b;->u:F

    iput p1, p0, Landroidx/dynamicanimation/a/b;->p:F

    return p2

    .line 190
    :cond_1
    iget p1, p0, Landroidx/dynamicanimation/a/b;->p:F

    iget v0, p0, Landroidx/dynamicanimation/a/b;->v:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 191
    iget p1, p0, Landroidx/dynamicanimation/a/b;->v:F

    iput p1, p0, Landroidx/dynamicanimation/a/b;->p:F

    return p2

    .line 194
    :cond_2
    iget p1, p0, Landroidx/dynamicanimation/a/b;->p:F

    iget v0, p0, Landroidx/dynamicanimation/a/b;->u:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 195
    iget p1, p0, Landroidx/dynamicanimation/a/b;->u:F

    iput p1, p0, Landroidx/dynamicanimation/a/b;->p:F

    return p2

    .line 199
    :cond_3
    iget p1, p0, Landroidx/dynamicanimation/a/b;->p:F

    iget v0, p0, Landroidx/dynamicanimation/a/b;->o:F

    invoke-virtual {p0, p1, v0}, Landroidx/dynamicanimation/a/b;->a(FF)Z

    move-result p0

    if-eqz p0, :cond_4

    return p2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public c(F)Landroidx/dynamicanimation/a/b;
    .locals 0

    .line 144
    invoke-super {p0, p1}, Landroidx/dynamicanimation/a/c;->g(F)Landroidx/dynamicanimation/a/c;

    .line 145
    iput p1, p0, Landroidx/dynamicanimation/a/b;->x:F

    return-object p0
.end method

.method public d(F)Landroidx/dynamicanimation/a/b;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 153
    iput p1, p0, Landroidx/dynamicanimation/a/b;->y:F

    return-object p0

    .line 151
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Velocity must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic e(F)Landroidx/dynamicanimation/a/c;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/a/b;->a(F)Landroidx/dynamicanimation/a/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic f(F)Landroidx/dynamicanimation/a/c;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/a/b;->b(F)Landroidx/dynamicanimation/a/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic g(F)Landroidx/dynamicanimation/a/c;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/a/b;->c(F)Landroidx/dynamicanimation/a/b;

    move-result-object p0

    return-object p0
.end method
