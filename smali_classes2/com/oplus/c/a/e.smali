.class public final synthetic Lcom/oplus/c/a/e;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/oplus/c/a/d$a;->values()[Lcom/oplus/c/a/d$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/c/a/e;->a:[I

    sget-object v0, Lcom/oplus/c/a/e;->a:[I

    sget-object v1, Lcom/oplus/c/a/d$a;->MEDIA_PLAYER:Lcom/oplus/c/a/d$a;

    invoke-virtual {v1}, Lcom/oplus/c/a/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/oplus/c/a/e;->a:[I

    sget-object v1, Lcom/oplus/c/a/d$a;->TBL:Lcom/oplus/c/a/d$a;

    invoke-virtual {v1}, Lcom/oplus/c/a/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
