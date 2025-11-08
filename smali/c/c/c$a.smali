.class final Lc/c/c$a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/c$a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lc/c/c$a$a;

.field private static final serialVersionUID:J


# instance fields
.field private final elements:[Lc/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/c$a$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lc/c/c$a;->Companion:Lc/c/c$a$a;

    return-void
.end method

.method public constructor <init>([Lc/c/g;)V
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/c$a;->elements:[Lc/c/g;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 4

    .line 193
    iget-object p0, p0, Lc/c/c$a;->elements:[Lc/c/g;

    sget-object v0, Lc/c/h;->INSTANCE:Lc/c/h;

    .line 198
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    check-cast v0, Lc/c/g;

    .line 193
    invoke-interface {v0, v3}, Lc/c/g;->plus(Lc/c/g;)Lc/c/g;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getElements()[Lc/c/g;
    .locals 0

    .line 188
    iget-object p0, p0, Lc/c/c$a;->elements:[Lc/c/g;

    return-object p0
.end method
