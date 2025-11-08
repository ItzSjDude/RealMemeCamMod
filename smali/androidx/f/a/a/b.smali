.class Landroidx/f/a/a/b;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Landroidx/f/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/f/a/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/f/a/a/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/f/a/c$a;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/f/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/f/a/c$a;)Landroidx/f/a/a/b$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/f/a/a/b;->a:Landroidx/f/a/a/b$a;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroidx/f/a/c$a;)Landroidx/f/a/a/b$a;
    .locals 1

    const/4 p0, 0x1

    .line 36
    new-array p0, p0, [Landroidx/f/a/a/a;

    .line 37
    new-instance v0, Landroidx/f/a/a/b$a;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/f/a/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroidx/f/a/a/a;Landroidx/f/a/c$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/f/a/a/b;->a:Landroidx/f/a/a/b$a;

    invoke-virtual {p0}, Landroidx/f/a/a/b$a;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/f/a/a/b;->a:Landroidx/f/a/a/b$a;

    invoke-virtual {p0, p1}, Landroidx/f/a/a/b$a;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public b()Landroidx/f/a/b;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/f/a/a/b;->a:Landroidx/f/a/a/b$a;

    invoke-virtual {p0}, Landroidx/f/a/a/b$a;->a()Landroidx/f/a/b;

    move-result-object p0

    return-object p0
.end method
