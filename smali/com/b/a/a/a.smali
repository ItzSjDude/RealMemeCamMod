.class public Lcom/b/a/a/a;
.super Ljava/lang/Object;
.source "AnimConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/b/a/a/b;

.field public b:Lcom/b/a/a/a$a;


# direct methods
.method public constructor <init>(Lcom/b/a/a/b;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/b/a/a/b;->ANIM_DIRECTION_DEFAULT:Lcom/b/a/a/b;

    iput-object v0, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/b;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/b/a/a/a;->b:Lcom/b/a/a/a$a;

    .line 8
    iput-object p1, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/b;

    return-void
.end method
