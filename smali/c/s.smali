.class public final Lc/s;
.super Ljava/lang/Object;
.source "Unit.kt"


# static fields
.field public static final a:Lc/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lc/s;

    invoke-direct {v0}, Lc/s;-><init>()V

    sput-object v0, Lc/s;->a:Lc/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "kotlin.Unit"

    return-object p0
.end method
