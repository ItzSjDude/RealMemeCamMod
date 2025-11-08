.class public final enum La/a/b/f/x;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/b/f/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/b/f/x;

.field public static final enum b:La/a/b/f/x;

.field public static final enum c:La/a/b/f/x;

.field public static final enum d:La/a/b/f/x;

.field public static final synthetic e:[La/a/b/f/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, La/a/b/f/x;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, La/a/b/f/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/b/f/x;->a:La/a/b/f/x;

    new-instance v0, La/a/b/f/x;

    const/4 v2, 0x1

    const-string v3, "SCREEN"

    invoke-direct {v0, v3, v2}, La/a/b/f/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/b/f/x;->b:La/a/b/f/x;

    new-instance v0, La/a/b/f/x;

    const/4 v3, 0x2

    const-string v4, "MULTIPLY"

    invoke-direct {v0, v4, v3}, La/a/b/f/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/b/f/x;->c:La/a/b/f/x;

    new-instance v0, La/a/b/f/x;

    const/4 v4, 0x3

    const-string v5, "OVERLAY"

    invoke-direct {v0, v5, v4}, La/a/b/f/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/b/f/x;->d:La/a/b/f/x;

    const/4 v0, 0x4

    new-array v0, v0, [La/a/b/f/x;

    sget-object v5, La/a/b/f/x;->a:La/a/b/f/x;

    aput-object v5, v0, v1

    sget-object v1, La/a/b/f/x;->b:La/a/b/f/x;

    aput-object v1, v0, v2

    sget-object v1, La/a/b/f/x;->c:La/a/b/f/x;

    aput-object v1, v0, v3

    sget-object v1, La/a/b/f/x;->d:La/a/b/f/x;

    aput-object v1, v0, v4

    sput-object v0, La/a/b/f/x;->e:[La/a/b/f/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/b/f/x;
    .locals 1

    const-class v0, La/a/b/f/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/b/f/x;

    return-object p0
.end method

.method public static values()[La/a/b/f/x;
    .locals 1

    sget-object v0, La/a/b/f/x;->e:[La/a/b/f/x;

    invoke-virtual {v0}, [La/a/b/f/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/b/f/x;

    return-object v0
.end method
