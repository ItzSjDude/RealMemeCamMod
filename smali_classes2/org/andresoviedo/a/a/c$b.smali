.class Lorg/andresoviedo/a/a/c$b;
.super Ljava/lang/Object;
.source "GL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andresoviedo/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/andresoviedo/a/a/c$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:I

.field c:Z

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/andresoviedo/a/a/c$b;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 3443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3439
    iput-boolean v0, p0, Lorg/andresoviedo/a/a/c$b;->c:Z

    .line 3440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/a/a/c$b;->d:Ljava/util/List;

    .line 3441
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/a/a/c$b;->e:Ljava/util/Map;

    .line 3444
    iput p1, p0, Lorg/andresoviedo/a/a/c$b;->b:I

    return-void
.end method

.method static a(I)Lorg/andresoviedo/a/a/c$b;
    .locals 2

    .line 3448
    invoke-static {p0}, Lorg/andresoviedo/a/a/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/andresoviedo/a/a/c$b;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/b/a/n;->a(Z)V

    .line 3449
    sget-object v0, Lorg/andresoviedo/a/a/c$b;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/andresoviedo/a/a/c$b;

    return-object p0
.end method

.method static b(I)V
    .locals 3

    .line 3453
    sget-object v0, Lorg/andresoviedo/a/a/c$b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andresoviedo/a/a/c$b;

    const/4 v2, 0x0

    .line 3454
    iput-boolean v2, v1, Lorg/andresoviedo/a/a/c$b;->c:Z

    goto :goto_0

    .line 3456
    :cond_0
    invoke-static {p0}, Lorg/andresoviedo/a/a/c$b;->a(I)Lorg/andresoviedo/a/a/c$b;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andresoviedo/a/a/c$b;->c:Z

    return-void
.end method
