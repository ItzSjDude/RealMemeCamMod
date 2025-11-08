.class public La/a/b/f/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, La/a/b/f/g;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, La/a/b/f/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, La/a/b/f/u$b;->b:La/a/b/f/u$b;

    invoke-static {v0}, La/a/b/f/u;->a(La/a/b/f/u$c;)V

    sput-boolean p0, La/a/b/f/g;->a:Z

    return-void
.end method
