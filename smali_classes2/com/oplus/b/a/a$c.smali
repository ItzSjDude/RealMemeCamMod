.class public final enum Lcom/oplus/b/a/a$c;
.super Ljava/lang/Enum;
.source "AppFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/b/a/a$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/b/a/a$c;

.field public static final enum CACHE_AND_DB:Lcom/oplus/b/a/a$c;

.field public static final enum CACHE_INVAILD:Lcom/oplus/b/a/a$c;

.field public static final enum CACHE_ONLY:Lcom/oplus/b/a/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/oplus/b/a/a$c;

    const/4 v1, 0x0

    const-string v2, "CACHE_ONLY"

    invoke-direct {v0, v2, v1}, Lcom/oplus/b/a/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/b/a/a$c;->CACHE_ONLY:Lcom/oplus/b/a/a$c;

    .line 21
    new-instance v0, Lcom/oplus/b/a/a$c;

    const/4 v2, 0x1

    const-string v3, "CACHE_AND_DB"

    invoke-direct {v0, v3, v2}, Lcom/oplus/b/a/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/b/a/a$c;->CACHE_AND_DB:Lcom/oplus/b/a/a$c;

    .line 22
    new-instance v0, Lcom/oplus/b/a/a$c;

    const/4 v3, 0x2

    const-string v4, "CACHE_INVAILD"

    invoke-direct {v0, v4, v3}, Lcom/oplus/b/a/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/b/a/a$c;->CACHE_INVAILD:Lcom/oplus/b/a/a$c;

    const/4 v0, 0x3

    .line 19
    new-array v0, v0, [Lcom/oplus/b/a/a$c;

    sget-object v4, Lcom/oplus/b/a/a$c;->CACHE_ONLY:Lcom/oplus/b/a/a$c;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oplus/b/a/a$c;->CACHE_AND_DB:Lcom/oplus/b/a/a$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/b/a/a$c;->CACHE_INVAILD:Lcom/oplus/b/a/a$c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oplus/b/a/a$c;->$VALUES:[Lcom/oplus/b/a/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/b/a/a$c;
    .locals 1

    .line 19
    const-class v0, Lcom/oplus/b/a/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/b/a/a$c;

    return-object p0
.end method

.method public static values()[Lcom/oplus/b/a/a$c;
    .locals 1

    .line 19
    sget-object v0, Lcom/oplus/b/a/a$c;->$VALUES:[Lcom/oplus/b/a/a$c;

    invoke-virtual {v0}, [Lcom/oplus/b/a/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/b/a/a$c;

    return-object v0
.end method
