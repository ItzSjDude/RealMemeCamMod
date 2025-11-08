.class public Lcom/oplus/tingle/ipc/a/a;
.super Landroid/database/MatrixCursor;
.source "ProviderCursor.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static volatile b:Lcom/oplus/tingle/ipc/a/a;


# instance fields
.field private c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "col"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/tingle/ipc/a/a;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/oplus/tingle/ipc/a/a;->b:Lcom/oplus/tingle/ipc/a/a;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 44
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "IBinder"

    .line 46
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 48
    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "ProviderCursor"

    const-string v2, "Get cursor bundle null."

    invoke-static {v1, v2, p0}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/tingle/ipc/a/a;->c:Landroid/os/Bundle;

    return-object p0
.end method
