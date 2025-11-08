.class public final Lcom/oplus/c/a/c/c$c;
.super Ljava/lang/Object;
.source "ProjectManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/c/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/oplus/c/a/c/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/oplus/c/a/c/c$c;

    invoke-direct {v0}, Lcom/oplus/c/a/c/c$c;-><init>()V

    sput-object v0, Lcom/oplus/c/a/c/c$c;->a:Lcom/oplus/c/a/c/c$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 0

    const-string p0, "media_id"

    .line 67
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
