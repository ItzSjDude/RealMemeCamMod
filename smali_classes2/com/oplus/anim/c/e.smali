.class public Lcom/oplus/anim/c/e;
.super Ljava/lang/Object;
.source "FontCharacter.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/b/n;",
            ">;"
        }
    .end annotation
.end field

.field private final b:C

.field private final c:D

.field private final d:D

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/b/n;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oplus/anim/c/e;->a:Ljava/util/List;

    .line 19
    iput-char p2, p0, Lcom/oplus/anim/c/e;->b:C

    .line 20
    iput-wide p3, p0, Lcom/oplus/anim/c/e;->c:D

    .line 21
    iput-wide p5, p0, Lcom/oplus/anim/c/e;->d:D

    .line 22
    iput-object p7, p0, Lcom/oplus/anim/c/e;->e:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/oplus/anim/c/e;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(CLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/c/b/n;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/oplus/anim/c/e;->a:Ljava/util/List;

    return-object p0
.end method

.method public b()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/anim/c/e;->d:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 52
    iget-char v0, p0, Lcom/oplus/anim/c/e;->b:C

    iget-object v1, p0, Lcom/oplus/anim/c/e;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/anim/c/e;->e:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/oplus/anim/c/e;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
