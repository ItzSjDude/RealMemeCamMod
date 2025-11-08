.class Landroidx/f/a/a/a$1;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/f/a/a/a;->a(Landroidx/f/a/e;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/f/a/e;

.field final synthetic b:Landroidx/f/a/a/a;


# direct methods
.method constructor <init>(Landroidx/f/a/a/a;Landroidx/f/a/e;)V
    .locals 0

    .line 161
    iput-object p1, p0, Landroidx/f/a/a/a$1;->b:Landroidx/f/a/a/a;

    iput-object p2, p0, Landroidx/f/a/a/a$1;->a:Landroidx/f/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    .line 165
    iget-object p0, p0, Landroidx/f/a/a/a$1;->a:Landroidx/f/a/e;

    new-instance p1, Landroidx/f/a/a/d;

    invoke-direct {p1, p4}, Landroidx/f/a/a/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p0, p1}, Landroidx/f/a/e;->a(Landroidx/f/a/d;)V

    .line 166
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0
.end method
