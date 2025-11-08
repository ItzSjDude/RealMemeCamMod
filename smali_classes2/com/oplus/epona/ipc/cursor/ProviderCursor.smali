.class public Lcom/oplus/epona/ipc/cursor/ProviderCursor;
.super Landroid/database/MatrixCursor;
.source "ProviderCursor.java"


# static fields
.field public static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ProviderCursor"


# instance fields
.field private binderExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "col"

    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/epona/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 16
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/oplus/epona/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    return-void
.end method

.method public static generateCursor(Landroid/os/Bundle;)Lcom/oplus/epona/ipc/cursor/ProviderCursor;
    .locals 2

    .line 25
    new-instance v0, Lcom/oplus/epona/ipc/cursor/ProviderCursor;

    sget-object v1, Lcom/oplus/epona/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/oplus/epona/ipc/cursor/ProviderCursor;-><init>([Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static stripBundle(Landroid/database/Cursor;)Landroid/os/Bundle;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/epona/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    return-object p0
.end method
