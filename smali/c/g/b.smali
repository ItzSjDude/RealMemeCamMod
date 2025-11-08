.class public final Lc/g/b;
.super Lc/g/a;
.source "PlatformRandom.kt"


# instance fields
.field private final b:Lc/g/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lc/g/a;-><init>()V

    .line 51
    new-instance v0, Lc/g/b$a;

    invoke-direct {v0}, Lc/g/b$a;-><init>()V

    iput-object v0, p0, Lc/g/b;->b:Lc/g/b$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Random;
    .locals 1

    .line 57
    iget-object p0, p0, Lc/g/b;->b:Lc/g/b$a;

    invoke-virtual {p0}, Lc/g/b$a;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "implStorage.get()"

    invoke-static {p0, v0}, Lc/f/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
