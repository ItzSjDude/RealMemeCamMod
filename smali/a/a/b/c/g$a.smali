.class public La/a/b/c/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/c/g;->a(ZLa/a/b/c/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:La/a/b/c/d;

.field public final synthetic c:Z

.field public final synthetic d:La/a/b/c/g;


# direct methods
.method public constructor <init>(La/a/b/c/g;ZLa/a/b/c/d;Z)V
    .locals 0

    iput-object p1, p0, La/a/b/c/g$a;->d:La/a/b/c/g;

    iput-boolean p2, p0, La/a/b/c/g$a;->a:Z

    iput-object p3, p0, La/a/b/c/g$a;->b:La/a/b/c/d;

    iput-boolean p4, p0, La/a/b/c/g$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, La/a/b/c/g$a;->d:La/a/b/c/g;

    iget-boolean v1, p0, La/a/b/c/g$a;->a:Z

    iget-object v2, p0, La/a/b/c/g$a;->b:La/a/b/c/d;

    iget-boolean p0, p0, La/a/b/c/g$a;->c:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p0, v3}, La/a/b/c/g;->a(La/a/b/c/g;ZLa/a/b/c/d;ZZ)V

    return-void
.end method
