.class Lcom/b/a/i$a$1;
.super Ljava/lang/Object;
.source "RenderEngineFactory.java"

# interfaces
.implements Lcom/b/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/i$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/i$a;


# direct methods
.method constructor <init>(Lcom/b/a/i$a;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/b/a/i$a$1;->a:Lcom/b/a/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/b/a/i$a$1;->a:Lcom/b/a/i$a;

    iget-object v0, v0, Lcom/b/a/i$a;->g:Lcom/b/a/f;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/b/a/i$a$1;->a:Lcom/b/a/i$a;

    iget-object p0, p0, Lcom/b/a/i$a;->a:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/b/a/i$a$1;->a:Lcom/b/a/i$a;

    iget-object p0, p0, Lcom/b/a/i$a;->g:Lcom/b/a/f;

    invoke-interface {p0}, Lcom/b/a/f;->a()Landroid/app/Activity;

    move-result-object p0

    :goto_0
    return-object p0
.end method
